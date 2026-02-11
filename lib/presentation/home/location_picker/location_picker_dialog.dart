import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/prayer_time/prayer_time_bloc.dart';
import 'package:flutter_quran/core/components/molecules/arrow_list_tile.dart';
import 'package:flutter_quran/core/components/textfield/primary_textfield.dart';
import 'package:flutter_quran/extension/extensions.dart';
import 'package:flutter_quran/presentation/home/location_picker/cubit/location_picker_cubit.dart';
import 'package:flutter_quran/theme/theme.dart';

class LocationPickerDialog extends StatefulWidget {
  const LocationPickerDialog({super.key});

  @override
  State<LocationPickerDialog> createState() => _LocationPickerDialogState();
}

class _LocationPickerDialogState extends State<LocationPickerDialog> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _errorTimer;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _errorTimer?.cancel();
    super.dispose();
  }

  void _onSearchChanged() {
    context.read<LocationPickerCubit>().search(_searchController.text);
  }

  void _onBack() {
    context.read<LocationPickerCubit>().backStep();
    _searchController.clear();
  }

  void _handleError(BuildContext context, String? message) {
    if (message != null) {
      _errorTimer?.cancel();
      _errorTimer = Timer(const Duration(seconds: 4), () {
        if (mounted) {
          context.read<LocationPickerCubit>().clearError();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationPickerCubit, LocationPickerState>(
      listenWhen: (previous, current) =>
          previous.errorMessage != current.errorMessage,
      listener: (context, state) {
        _handleError(context, state.errorMessage);
      },
      builder: (context, state) {
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
                    if (state.step > 0)
                      GestureDetector(
                        onTap: _onBack,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Icon(Icons.arrow_back,
                              color: MyTheme.color.secondary),
                        ),
                      ),
                    Expanded(
                      child: Text(
                        state.step == 0
                            ? "Pilih Provinsi"
                            : state.step == 1
                                ? "Pilih Kota/Kab"
                                : "Pilih Kecamatan",
                        style: MyTheme.style.title.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: context.blackWhiteColor,
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
                child: PrimaryTextfield(
                  title: "",
                  hintText: "Cari...",
                  controller: _searchController,
                  action: TextInputAction.search,
                  type: TextInputType.text,
                  backgroundColor: context.isDark
                      ? Colors.white.withAlpha(10)
                      : Colors.white,
                  prefixIcon:
                      Icon(Icons.search, color: MyTheme.color.secondary),
                  radius: 12,
                  validator: (value) => null,
                ),
              ),

              const SizedBox(height: 16),

              // Use Current Location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Fitur GPS sedang diproses...")),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.my_location, color: MyTheme.color.secondary),
                      const SizedBox(width: 12),
                      Text(
                        "Gunakan lokasi saat ini",
                        style: MyTheme.style.text14.copyWith(
                          color: context.blackWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),
              Divider(
                height: 1,
                color:
                    context.isDark ? Colors.white.withAlpha(20) : Colors.white,
              ),

              // Content List
              Expanded(
                child: state.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : state.filteredList.isEmpty
                        ? const Center(child: Text("Data tidak ditemukan"))
                        : ListView.builder(
                            itemCount: state.filteredList.length,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            itemBuilder: (context, index) {
                              final item = state.filteredList[index];
                              return ArrowListTile(
                                title: item['name'],
                                onTap: () {
                                  final cubit =
                                      context.read<LocationPickerCubit>();
                                  if (state.step == 0) {
                                    cubit.loadCities(item['id'], item);
                                    _searchController.clear();
                                  } else if (state.step == 1) {
                                    cubit.loadDistricts(item['id'], item);
                                    _searchController.clear();
                                  } else {
                                    // Final selection
                                    cubit
                                        .getLocationFromAddress(item)
                                        .then((loc) {
                                      if (loc != null && context.mounted) {
                                        context.read<PrayerTimeBloc>().add(
                                              PrayerTimeEvent.locationChanged(
                                                state.selectedProvince?[
                                                        'name'] ??
                                                    '',
                                                state.selectedCity?['name'] ??
                                                    '',
                                                item['name'],
                                                loc.latitude,
                                                loc.longitude,
                                              ),
                                            );
                                        Navigator.pop(context);
                                      }
                                    });
                                  }
                                },
                              );
                            },
                          ),
              ),

              // Error Toast (Inline)
              if (state.errorMessage != null)
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red.shade200),
                  ),
                  child: Text(
                    state.errorMessage!,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
