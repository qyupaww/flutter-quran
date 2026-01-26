// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter_quran/presentation/calendar/calendar_screen.dart'
    as _i1;
import 'package:flutter_quran/presentation/home/home_screen.dart' as _i2;
import 'package:flutter_quran/presentation/home/home_tab_screen.dart' as _i3;
import 'package:flutter_quran/presentation/maps/map_screen.dart' as _i4;
import 'package:flutter_quran/presentation/qibla/qibla_screen.dart' as _i5;
import 'package:flutter_quran/presentation/quran/detail/surah_detail_screen.dart'
    as _i8;
import 'package:flutter_quran/presentation/quran/quran_screen.dart' as _i6;
import 'package:flutter_quran/presentation/splash/splash_screen.dart' as _i7;

/// generated route for
/// [_i1.CalendarScreen]
class CalendarRoute extends _i9.PageRouteInfo<void> {
  const CalendarRoute({List<_i9.PageRouteInfo>? children})
      : super(CalendarRoute.name, initialChildren: children);

  static const String name = 'CalendarRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.CalendarScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeTabScreen]
class HomeTabRoute extends _i9.PageRouteInfo<void> {
  const HomeTabRoute({List<_i9.PageRouteInfo>? children})
      : super(HomeTabRoute.name, initialChildren: children);

  static const String name = 'HomeTabRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeTabScreen();
    },
  );
}

/// generated route for
/// [_i4.MapScreen]
class MapRoute extends _i9.PageRouteInfo<void> {
  const MapRoute({List<_i9.PageRouteInfo>? children})
      : super(MapRoute.name, initialChildren: children);

  static const String name = 'MapRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.MapScreen();
    },
  );
}

/// generated route for
/// [_i5.QiblaScreen]
class QiblaRoute extends _i9.PageRouteInfo<void> {
  const QiblaRoute({List<_i9.PageRouteInfo>? children})
      : super(QiblaRoute.name, initialChildren: children);

  static const String name = 'QiblaRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.QiblaScreen();
    },
  );
}

/// generated route for
/// [_i6.QuranScreen]
class QuranRoute extends _i9.PageRouteInfo<void> {
  const QuranRoute({List<_i9.PageRouteInfo>? children})
      : super(QuranRoute.name, initialChildren: children);

  static const String name = 'QuranRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.QuranScreen();
    },
  );
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.SplashScreen();
    },
  );
}

/// generated route for
/// [_i8.SurahDetailScreen]
class SurahDetailRoute extends _i9.PageRouteInfo<SurahDetailRouteArgs> {
  SurahDetailRoute({
    _i10.Key? key,
    required int surahNumber,
    required String surahName,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SurahDetailRoute.name,
          args: SurahDetailRouteArgs(
            key: key,
            surahNumber: surahNumber,
            surahName: surahName,
          ),
          initialChildren: children,
        );

  static const String name = 'SurahDetailRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SurahDetailRouteArgs>();
      return _i8.SurahDetailScreen(
        key: args.key,
        surahNumber: args.surahNumber,
        surahName: args.surahName,
      );
    },
  );
}

class SurahDetailRouteArgs {
  const SurahDetailRouteArgs({
    this.key,
    required this.surahNumber,
    required this.surahName,
  });

  final _i10.Key? key;

  final int surahNumber;

  final String surahName;

  @override
  String toString() {
    return 'SurahDetailRouteArgs{key: $key, surahNumber: $surahNumber, surahName: $surahName}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SurahDetailRouteArgs) return false;
    return key == other.key &&
        surahNumber == other.surahNumber &&
        surahName == other.surahName;
  }

  @override
  int get hashCode => key.hashCode ^ surahNumber.hashCode ^ surahName.hashCode;
}
