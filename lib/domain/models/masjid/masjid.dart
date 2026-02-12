class Masjid {
  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final double? distance; // distance in km or meters from user

  Masjid({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    this.distance,
  });

  factory Masjid.fromJson(Map<String, dynamic> json) {
    // Overpass API returns tags in 'tags' and id in 'id'
    final tags = json['tags'] ?? {};

    double lat = 0.0;
    double lon = 0.0;

    if (json.containsKey('lat') && json.containsKey('lon')) {
      lat = (json['lat'] as num).toDouble();
      lon = (json['lon'] as num).toDouble();
    } else if (json.containsKey('center')) {
      final center = json['center'];
      lat = (center['lat'] as num).toDouble();
      lon = (center['lon'] as num).toDouble();
    }

    return Masjid(
      id: json['id'].toString(),
      name: tags['name'] ?? 'Masjid',
      latitude: lat,
      longitude: lon,
    );
  }
}
