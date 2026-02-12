import 'package:equatable/equatable.dart';
import 'package:flutter_quran/domain/models/masjid/masjid.dart';

abstract class MasjidState extends Equatable {
  const MasjidState();

  @override
  List<Object?> get props => [];
}

class MasjidInitial extends MasjidState {}

class MasjidLoading extends MasjidState {}

class MasjidLoaded extends MasjidState {
  final List<Masjid> masjids;
  final double latitude;
  final double longitude;

  const MasjidLoaded(this.masjids, this.latitude, this.longitude);

  @override
  List<Object?> get props => [masjids, latitude, longitude];
}

class MasjidError extends MasjidState {
  final String message;

  const MasjidError(this.message);

  @override
  List<Object?> get props => [message];
}
