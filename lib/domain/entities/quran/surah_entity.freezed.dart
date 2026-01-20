// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurahEntity {
  @JsonKey(name: 'number')
  int? get number;
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'englishName')
  String? get englishName;
  @JsonKey(name: 'englishNameTranslation')
  String? get englishNameTranslation;
  @JsonKey(name: 'numberOfAyahs')
  int? get numberOfAyahs;
  @JsonKey(name: 'revelationType')
  String? get revelationType;

  /// Create a copy of SurahEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SurahEntityCopyWith<SurahEntity> get copyWith =>
      _$SurahEntityCopyWithImpl<SurahEntity>(this as SurahEntity, _$identity);

  /// Serializes this SurahEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SurahEntity &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, englishName,
      englishNameTranslation, numberOfAyahs, revelationType);

  @override
  String toString() {
    return 'SurahEntity(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, numberOfAyahs: $numberOfAyahs, revelationType: $revelationType)';
  }
}

/// @nodoc
abstract mixin class $SurahEntityCopyWith<$Res> {
  factory $SurahEntityCopyWith(
          SurahEntity value, $Res Function(SurahEntity) _then) =
      _$SurahEntityCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'number') int? number,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'englishName') String? englishName,
      @JsonKey(name: 'englishNameTranslation') String? englishNameTranslation,
      @JsonKey(name: 'numberOfAyahs') int? numberOfAyahs,
      @JsonKey(name: 'revelationType') String? revelationType});
}

/// @nodoc
class _$SurahEntityCopyWithImpl<$Res> implements $SurahEntityCopyWith<$Res> {
  _$SurahEntityCopyWithImpl(this._self, this._then);

  final SurahEntity _self;
  final $Res Function(SurahEntity) _then;

  /// Create a copy of SurahEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? englishName = freezed,
    Object? englishNameTranslation = freezed,
    Object? numberOfAyahs = freezed,
    Object? revelationType = freezed,
  }) {
    return _then(_self.copyWith(
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _self.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishNameTranslation: freezed == englishNameTranslation
          ? _self.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfAyahs: freezed == numberOfAyahs
          ? _self.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int?,
      revelationType: freezed == revelationType
          ? _self.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SurahEntity].
extension SurahEntityPatterns on SurahEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SurahEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SurahEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SurahEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'number') int? number,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'englishName') String? englishName,
            @JsonKey(name: 'englishNameTranslation')
            String? englishNameTranslation,
            @JsonKey(name: 'numberOfAyahs') int? numberOfAyahs,
            @JsonKey(name: 'revelationType') String? revelationType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahEntity() when $default != null:
        return $default(
            _that.number,
            _that.name,
            _that.englishName,
            _that.englishNameTranslation,
            _that.numberOfAyahs,
            _that.revelationType);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'number') int? number,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'englishName') String? englishName,
            @JsonKey(name: 'englishNameTranslation')
            String? englishNameTranslation,
            @JsonKey(name: 'numberOfAyahs') int? numberOfAyahs,
            @JsonKey(name: 'revelationType') String? revelationType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahEntity():
        return $default(
            _that.number,
            _that.name,
            _that.englishName,
            _that.englishNameTranslation,
            _that.numberOfAyahs,
            _that.revelationType);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'number') int? number,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'englishName') String? englishName,
            @JsonKey(name: 'englishNameTranslation')
            String? englishNameTranslation,
            @JsonKey(name: 'numberOfAyahs') int? numberOfAyahs,
            @JsonKey(name: 'revelationType') String? revelationType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahEntity() when $default != null:
        return $default(
            _that.number,
            _that.name,
            _that.englishName,
            _that.englishNameTranslation,
            _that.numberOfAyahs,
            _that.revelationType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SurahEntity implements SurahEntity {
  const _SurahEntity(
      {@JsonKey(name: 'number') this.number,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'englishName') this.englishName,
      @JsonKey(name: 'englishNameTranslation') this.englishNameTranslation,
      @JsonKey(name: 'numberOfAyahs') this.numberOfAyahs,
      @JsonKey(name: 'revelationType') this.revelationType});
  factory _SurahEntity.fromJson(Map<String, dynamic> json) =>
      _$SurahEntityFromJson(json);

  @override
  @JsonKey(name: 'number')
  final int? number;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'englishName')
  final String? englishName;
  @override
  @JsonKey(name: 'englishNameTranslation')
  final String? englishNameTranslation;
  @override
  @JsonKey(name: 'numberOfAyahs')
  final int? numberOfAyahs;
  @override
  @JsonKey(name: 'revelationType')
  final String? revelationType;

  /// Create a copy of SurahEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SurahEntityCopyWith<_SurahEntity> get copyWith =>
      __$SurahEntityCopyWithImpl<_SurahEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SurahEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurahEntity &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, englishName,
      englishNameTranslation, numberOfAyahs, revelationType);

  @override
  String toString() {
    return 'SurahEntity(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, numberOfAyahs: $numberOfAyahs, revelationType: $revelationType)';
  }
}

/// @nodoc
abstract mixin class _$SurahEntityCopyWith<$Res>
    implements $SurahEntityCopyWith<$Res> {
  factory _$SurahEntityCopyWith(
          _SurahEntity value, $Res Function(_SurahEntity) _then) =
      __$SurahEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'number') int? number,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'englishName') String? englishName,
      @JsonKey(name: 'englishNameTranslation') String? englishNameTranslation,
      @JsonKey(name: 'numberOfAyahs') int? numberOfAyahs,
      @JsonKey(name: 'revelationType') String? revelationType});
}

/// @nodoc
class __$SurahEntityCopyWithImpl<$Res> implements _$SurahEntityCopyWith<$Res> {
  __$SurahEntityCopyWithImpl(this._self, this._then);

  final _SurahEntity _self;
  final $Res Function(_SurahEntity) _then;

  /// Create a copy of SurahEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? englishName = freezed,
    Object? englishNameTranslation = freezed,
    Object? numberOfAyahs = freezed,
    Object? revelationType = freezed,
  }) {
    return _then(_SurahEntity(
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _self.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishNameTranslation: freezed == englishNameTranslation
          ? _self.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfAyahs: freezed == numberOfAyahs
          ? _self.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int?,
      revelationType: freezed == revelationType
          ? _self.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
