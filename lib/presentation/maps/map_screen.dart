import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
// ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:flutter_quran/injection/injector.dart';
import 'package:flutter_quran/presentation/maps/cubit/masjid_cubit.dart';
import 'package:flutter_quran/presentation/maps/cubit/masjid_state.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<MasjidCubit>()..loadNearbyMasjids(),
      child: const _MapScreenView(),
    );
  }
}

class _MapScreenView extends StatefulWidget {
  const _MapScreenView();

  @override
  State<_MapScreenView> createState() => _MapScreenViewState();
}

class _MapScreenViewState extends State<_MapScreenView> {
  final MapController _mapController = MapController();
  bool _isMapReady = false;

  void _launchMapsUrl(double lat, double lon) async {
    final url =
        Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lon');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Masjid Sekitar")),
      body: BlocConsumer<MasjidCubit, MasjidState>(
        listener: (context, state) {
          if (state is MasjidError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }
          if (state is MasjidLoaded && _isMapReady) {
            _mapController.move(
                LatLng(state.latitude, state.longitude), 15.0 // Zoom level
                );
          }
        },
        builder: (context, state) {
          if (state is MasjidLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          LatLng initialCenter =
              const LatLng(-6.200000, 106.816666); // Default Jakarta
          List<Marker> markers = [];

          if (state is MasjidLoaded) {
            initialCenter = LatLng(state.latitude, state.longitude);

            // User Marker (Real Location)
            markers.add(
              Marker(
                point: initialCenter,
                width: 80,
                height: 80,
                child: const Icon(Icons.person_pin_circle,
                    color: Colors.blue, size: 40),
              ),
            );

            // Masjid Markers
            for (var masjid in state.masjids) {
              markers.add(
                Marker(
                  point: LatLng(masjid.latitude, masjid.longitude),
                  width: 80,
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          padding: const EdgeInsets.all(16),
                          height: 150,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(masjid.name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _launchMapsUrl(
                                        masjid.latitude, masjid.longitude);
                                  },
                                  icon: const Icon(Icons.directions),
                                  label: const Text("Get Directions"),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    child: const Icon(Icons.location_on,
                        color: Colors.red, size: 40),
                  ),
                ),
              );
            }
          }

          return FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: initialCenter,
              initialZoom: 15.0,
              onMapReady: () {
                setState(() {
                  _isMapReady = true;
                });
                // If loaded state is already valid, move map now
                if (state is MasjidLoaded) {
                  _mapController.move(
                      LatLng(state.latitude, state.longitude), 15.0);
                }
              },
              interactionOptions: const InteractionOptions(
                flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
              ),
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.flutter_quran',
              ),
              MarkerLayer(markers: markers),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<MasjidCubit>().loadNearbyMasjids();
        },
        child: const Icon(Icons.my_location),
      ),
    );
  }
}
