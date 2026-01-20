import 'package:flutter_quran/core/networks/api_client.dart';

import 'package:flutter_quran/infrastructure/datasource/base/api_datasource.dart';
import 'package:flutter_quran/domain/entities/auth/auth_entity.dart';

extension APIExtension on ApiClient {
  /// AUTH ENTITY
  ApiDataSource<AuthEntity> get auth =>
      ApiDataSource<AuthEntity>(this, AuthEntity.fromJson);
}
