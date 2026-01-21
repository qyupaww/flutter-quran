import 'package:flutter/material.dart';
import 'package:flutter_quran/injection/injector.dart';
import 'package:flutter_quran/domain/models/flavor/flavor_model.dart';
import 'package:flutter_quran/gen/assets.gen.dart';
import 'package:package_info_plus/package_info_plus.dart';

enum FlavorType { prod, dev, staging }

final flavor = inject<FlavorUtils>();

class FlavorUtils {
  /// Current index of flavor
  static int? index;

  /// Define list of available flavors
  /// for every company or project
  static List<FlavorModel> flavors = [
    FlavorModel(
      packages: "com.template.flutter_quran.dev",
      type: FlavorType.dev,
      logoPath: Assets.images.logoFull.path,
      name: "Muslim App Dev",
      primaryColor: const Color(0xFF4E9446),
      primaryLightColor: const Color(0xFFE0F2F1),
      secondaryColor: const Color(0xffC9A036),
      api: FlavorAPIModel(
        baseURL: "https://api.quran.gading.dev",
      ),
    ),
    FlavorModel(
      packages: "com.template.flutter_quran.staging",
      type: FlavorType.staging,
      logoPath: Assets.images.logoFull.path,
      name: "Muslim App Staging",
      primaryColor: const Color(0xFF4E9446),
      primaryLightColor: const Color(0xFFE0F2F1),
      secondaryColor: const Color(0xffC9A036),
      api: FlavorAPIModel(
        baseURL: "https://api.quran.gading.dev",
      ),
    ),
    FlavorModel(
      packages: "com.template.flutter_quran",
      type: FlavorType.prod,
      logoPath: Assets.images.logoFull.path,
      name: "Muslim App",
      primaryColor: const Color(0xFF4E9446),
      primaryLightColor: const Color(0xFFE0F2F1),
      secondaryColor: const Color(0xffC9A036),
      api: FlavorAPIModel(
        baseURL: "https://api.quran.gading.dev",
      ),
    ),
  ];

  /// Find current flavor by package name
  Future initType({PackageInfo? package}) async {
    package ??= await PackageInfo.fromPlatform();
    String packageName = package.packageName;
    index = flavors.indexWhere((item) => item.packages == packageName);
  }

  FlavorUtils() {
    PackageInfo.fromPlatform().then((value) {
      initType(package: value);
    });
  }

  /// Get current flavor type
  FlavorType getType() {
    final type = flavors[index!].type;
    return type;
  }

  /// Get current flavor
  FlavorModel get current {
    final type = getType();
    return flavors.firstWhere((item) => item.type == type);
  }
}
