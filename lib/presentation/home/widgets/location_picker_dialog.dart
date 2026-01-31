import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/prayer_time/prayer_time_bloc.dart';
import 'package:flutter_quran/infrastructure/location/region_repository.dart';
import 'package:flutter_quran/theme/theme.dart';
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

      // Attempt 1: Platform Geocoding
      try {
        List<Location> locations = await locationFromAddress(address);
        if (locations.isNotEmpty) {
          _processLocation(locations.first, district);
          return;
        }
      } catch (_) {
        // Fallback to Nominatim
      }

      // Attempt 2: Nominatim Fallback
      if (mounted) {
        final coords = await _repository.getCoordinates(address);
        if (coords != null) {
          // Manually construct Location object or pass lat/long directly
          final loc = Location(
            latitude: coords['lat']!,
            longitude: coords['long']!,
            timestamp: DateTime.now(),
          );
          _processLocation(loc, district);
          return;
        }
      }

      _showError("Koordinat tidak ditemukan untuk lokasi ini.");
    } catch (e) {
      String msg = "Gagal mendapatkan lokasi: $e";
      if (e.toString().contains("IO_ERROR") ||
          e.toString().contains("network")) {
        msg = "Periksa koneksi internet Anda.";
      }
      _showError(msg);
    }
  }

  void _processLocation(Location loc, Map<String, dynamic> district) {
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
  }

  // Error state
  String? _errorMessage;

  void _showError(String message) {
    setState(() {
      _errorMessage = message;
    });
    // Auto clear after 3 seconds
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        setState(() => _errorMessage = null);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      height: MediaQuery.of(context).size.height * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drag Handle
          Center(
            child: Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),

          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                if (_step > 0)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _step--;
                        _clearSearch();
                        if (_step == 0) _filteredList = _provinces;
                        if (_step == 1) _filteredList = _cities;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child:
                          Icon(Icons.arrow_back, color: MyTheme.color.primary),
                    ),
                  ),
                Expanded(
                  child: Text(
                    _step == 0
                        ? "Pilih Provinsi"
                        : _step == 1
                            ? "Pilih Kota/Kab"
                            : "Pilih Kecamatan",
                    style: MyTheme.style.title.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF4A6572), // Custom Greenish Gray
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Cari...",
                prefixIcon: Icon(Icons.search, color: MyTheme.color.primary),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xFFF5F6F8), // Very light grey
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Use Current Location Option (Only on Step 0 or always? Typically global)
          // Steps: If we want to allow picking location at any level, we can keep it.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                // Trigger reverse geocoding for current GPS
                // We don't have the logic wired here fully without geolocator,
                // but let's assume we can try generic _onDistrictSelected with override
                // or just show error "Not implemented" if GPS missing.
                // For now let's just show feedback.
                _showError("Fitur GPS sedang diproses...");
              },
              child: Row(
                children: [
                  Icon(Icons.my_location,
                      color: MyTheme.color.primary), // Green
                  const SizedBox(width: 12),
                  Text(
                    "Gunakan lokasi saat ini",
                    style: MyTheme.style.text14.copyWith(
                      color: const Color(0xFF333333),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),
          const Divider(height: 1),

          // Content List
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _filteredList.isEmpty
                    ? const Center(child: Text("Data tidak ditemukan"))
                    : ListView.builder(
                        itemCount: _filteredList.length,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        itemBuilder: (context, index) {
                          final item = _filteredList[index];
                          return ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 4),
                            title: Text(
                              item['name'],
                              style: MyTheme.style.text14.copyWith(
                                color: const Color(0xFF333333),
                              ),
                            ),
                            trailing: Icon(
                              Icons.chevron_right,
                              size: 20,
                              color: MyTheme.color.primary, // Green arrow
                            ),
                            onTap: () {
                              if (_step == 0) {
                                _selectedProvince = item;
                                _loadCities(item['id']);
                              } else if (_step == 1) {
                                _selectedCity = item;
                                _loadDistricts(item['id']);
                              } else {
                                _onDistrictSelected(item);
                              }
                            },
                          );
                        },
                      ),
          ),

          // Error Toast (Inline)
          if (_errorMessage != null)
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red.shade200),
              ),
              child: Text(
                _errorMessage!,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
