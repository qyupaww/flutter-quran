import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/prayer_time/prayer_time_bloc.dart';
import 'package:flutter_quran/infrastructure/location/region_repository.dart';
import 'package:geocoding/geocoding.dart';

class LocationPickerDialog extends StatefulWidget {
  const LocationPickerDialog({super.key});

  @override
  State<LocationPickerDialog> createState() => _LocationPickerDialogState();
}

class _LocationPickerDialogState extends State<LocationPickerDialog> {
  final RegionRepository _repository = RegionRepository();
  final TextEditingController _searchController = TextEditingController();

  // Master lists
  List<Map<String, dynamic>> _provinces = [];
  List<Map<String, dynamic>> _cities = [];
  List<Map<String, dynamic>> _districts = [];

  // Displayed list (filtered)
  List<Map<String, dynamic>> _filteredList = [];

  Map<String, dynamic>? _selectedProvince;
  Map<String, dynamic>? _selectedCity;

  int _step = 0; // 0: Prov, 1: City, 2: District
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProvinces();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      final sourceList = _step == 0
          ? _provinces
          : _step == 1
              ? _cities
              : _districts;

      if (query.isEmpty) {
        _filteredList = sourceList;
      } else {
        _filteredList = sourceList
            .where(
                (item) => item['name'].toString().toLowerCase().contains(query))
            .toList();
      }
    });
  }

  void _clearSearch() {
    _searchController.clear();
    _onSearchChanged();
  }

  Future<void> _loadProvinces() async {
    setState(() => _isLoading = true);
    try {
      final data = await _repository.getProvinces();
      if (mounted) {
        setState(() {
          _provinces = data;
          _filteredList = data;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        _showError("Gagal memuat provinsi: $e");
      }
    }
  }

  Future<void> _loadCities(String provId) async {
    setState(() {
      _isLoading = true;
      _clearSearch();
    });
    try {
      final data = await _repository.getCities(provId);
      if (mounted) {
        setState(() {
          _cities = data;
          _filteredList = data;
          _isLoading = false;
          _step = 1;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        _showError("Gagal memuat kota: $e");
      }
    }
  }

  Future<void> _loadDistricts(String cityId) async {
    setState(() {
      _isLoading = true;
      _clearSearch();
    });
    try {
      final data = await _repository.getDistricts(cityId);
      if (mounted) {
        setState(() {
          _districts = data;
          _filteredList = data;
          _isLoading = false;
          _step = 2;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        _showError("Gagal memuat kecamatan: $e");
      }
    }
  }

  Future<void> _onDistrictSelected(Map<String, dynamic> district) async {
    // Show loading indicator usually, but here we just wait
    // Address format: "Kecamatan Nam, Kota Name, Indonesia"
    // Using simple format often works better with free geocoders
    final address = "${district['name']}, ${_selectedCity?['name']}, Indonesia";

    // Optimistic UI update or show loading dialog could be added here
    // For now, we rely on the Bloc loading state after dispatching

    try {
      if (!mounted) return;

      // Attempt Geocoding
      List<Location> locations = await locationFromAddress(address);

      if (locations.isNotEmpty) {
        final loc = locations.first;
        if (mounted) {
          context.read<PrayerTimeBloc>().add(
                PrayerTimeEvent.locationChanged(
                  _selectedProvince?['name'] ?? '',
                  _selectedCity?['name'] ?? '',
                  district['name'],
                  loc.latitude,
                  loc.longitude,
                ),
              );
          Navigator.pop(context);
        }
      } else {
        _showError("Koordinat tidak ditemukan untuk lokasi ini.");
      }
    } catch (e) {
      // Common error: IO Exception (Network) or No location found
      String msg = "Gagal mendapatkan lokasi.";
      if (e.toString().contains("IO_ERROR") ||
          e.toString().contains("network")) {
        msg = "Periksa koneksi internet Anda.";
      }
      _showError(msg);
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
      behavior: SnackBarBehavior.floating,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints(maxHeight: 500), // Limit height
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                if (_step > 0)
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      setState(() {
                        _step--;
                        _clearSearch();
                        // Restore previous list
                        if (_step == 0) _filteredList = _provinces;
                        if (_step == 1) _filteredList = _cities;
                      });
                    },
                  ),
                if (_step > 0) const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    _step == 0
                        ? "Pilih Provinsi"
                        : _step == 1
                            ? "Pilih Kota/Kab"
                            : "Pilih Kecamatan",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
            const SizedBox(height: 16),

            // Search Bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Cari...",
                prefixIcon: const Icon(Icons.search),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
              ),
            ),
            const SizedBox(height: 12),

            // Content
            if (_isLoading)
              const Expanded(child: Center(child: CircularProgressIndicator()))
            else if (_filteredList.isEmpty)
              const Expanded(
                child: Center(
                  child: Text("Data tidak ditemukan"),
                ),
              )
            else
              Expanded(
                child: ListView.separated(
                  itemCount: _filteredList.length,
                  separatorBuilder: (context, index) =>
                      const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final item = _filteredList[index];
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(item['name']),
                      trailing: const Icon(Icons.chevron_right,
                          size: 20, color: Colors.grey),
                      onTap: () {
                        if (_step == 0) {
                          _selectedProvince = item;
                          _loadCities(item['id']);
                        } else if (_step == 1) {
                          _selectedCity = item;
                          _loadDistricts(item['id']);
                        } else {
                          // Show loading indicator or simple confirmation?
                          // For now immediately trigger
                          _onDistrictSelected(item);
                        }
                      },
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
