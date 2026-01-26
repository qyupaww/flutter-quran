// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurahDetailEntity {
  int get number;
  String get name;
  String get englishName;
  String get nameTranslation;
  String get revelationType;
  int get numberOfAyahs;
  List<VerseEntity> get verses;

  /// Create a copy of SurahDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SurahDetailEntityCopyWith<SurahDetailEntity> get copyWith =>
      _$SurahDetailEntityCopyWithImpl<SurahDetailEntity>(
          this as SurahDetailEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SurahDetailEntity &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.nameTranslation, nameTranslation) ||
                other.nameTranslation == nameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs) &&
            const DeepCollectionEquality().equals(other.verses, verses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      name,
      englishName,
      nameTranslation,
      revelationType,
      numberOfAyahs,
      const DeepCollectionEquality().hash(verses));

  @override
  String toString() {
    return 'SurahDetailEntity(number: $number, name: $name, englishName: $englishName, nameTranslation: $nameTranslation, revelationType: $revelationType, numberOfAyahs: $numberOfAyahs, verses: $verses)';
  }
}

/// @nodoc
abstract mixin class $SurahDetailEntityCopyWith<$Res> {
  factory $SurahDetailEntityCopyWith(
          SurahDetailEntity value, $Res Function(SurahDetailEntity) _then) =
      _$SurahDetailEntityCopyWithImpl;
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String nameTranslation,
      String revelationType,
      int numberOfAyahs,
      List<VerseEntity> verses});
}

/// @nodoc
class _$SurahDetailEntityCopyWithImpl<$Res>
    implements $SurahDetailEntityCopyWith<$Res> {
  _$SurahDetailEntityCopyWithImpl(this._self, this._then);

  final SurahDetailEntity _self;
  final $Res Function(SurahDetailEntity) _then;

  /// Create a copy of SurahDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? nameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
    Object? verses = null,
  }) {
    return _then(_self.copyWith(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _self.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      nameTranslation: null == nameTranslation
          ? _self.nameTranslation
          : nameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _self.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfAyahs: null == numberOfAyahs
          ? _self.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int,
      verses: null == verses
          ? _self.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseEntity>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SurahDetailEntity].
extension SurahDetailEntityPatterns on SurahDetailEntity {
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
    TResult Function(_SurahDetailEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahDetailEntity() when $default != null:
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
    TResult Function(_SurahDetailEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDetailEntity():
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
    TResult? Function(_SurahDetailEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDetailEntity() when $default != null:
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
            int number,
            String name,
            String englishName,
            String nameTranslation,
            String revelationType,
            int numberOfAyahs,
            List<VerseEntity> verses)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahDetailEntity() when $default != null:
        return $default(
            _that.number,
            _that.name,
            _that.englishName,
            _that.nameTranslation,
            _that.revelationType,
            _that.numberOfAyahs,
            _that.verses);
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
            int number,
            String name,
            String englishName,
            String nameTranslation,
            String revelationType,
            int numberOfAyahs,
            List<VerseEntity> verses)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDetailEntity():
        return $default(
            _that.number,
            _that.name,
            _that.englishName,
            _that.nameTranslation,
            _that.revelationType,
            _that.numberOfAyahs,
            _that.verses);
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
            int number,
            String name,
            String englishName,
            String nameTranslation,
            String revelationType,
            int numberOfAyahs,
            List<VerseEntity> verses)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDetailEntity() when $default != null:
        return $default(
            _that.number,
            _that.name,
            _that.englishName,
            _that.nameTranslation,
            _that.revelationType,
            _that.numberOfAyahs,
            _that.verses);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SurahDetailEntity implements SurahDetailEntity {
  const _SurahDetailEntity(
      {required this.number,
      required this.name,
      required this.englishName,
      required this.nameTranslation,
      required this.revelationType,
      required this.numberOfAyahs,
      required final List<VerseEntity> verses})
      : _verses = verses;

  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String nameTranslation;
  @override
  final String revelationType;
  @override
  final int numberOfAyahs;
  final List<VerseEntity> _verses;
  @override
  List<VerseEntity> get verses {
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verses);
  }

  /// Create a copy of SurahDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SurahDetailEntityCopyWith<_SurahDetailEntity> get copyWith =>
      __$SurahDetailEntityCopyWithImpl<_SurahDetailEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurahDetailEntity &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.nameTranslation, nameTranslation) ||
                other.nameTranslation == nameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs) &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      name,
      englishName,
      nameTranslation,
      revelationType,
      numberOfAyahs,
      const DeepCollectionEquality().hash(_verses));

  @override
  String toString() {
    return 'SurahDetailEntity(number: $number, name: $name, englishName: $englishName, nameTranslation: $nameTranslation, revelationType: $revelationType, numberOfAyahs: $numberOfAyahs, verses: $verses)';
  }
}

/// @nodoc
abstract mixin class _$SurahDetailEntityCopyWith<$Res>
    implements $SurahDetailEntityCopyWith<$Res> {
  factory _$SurahDetailEntityCopyWith(
          _SurahDetailEntity value, $Res Function(_SurahDetailEntity) _then) =
      __$SurahDetailEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String nameTranslation,
      String revelationType,
      int numberOfAyahs,
      List<VerseEntity> verses});
}

/// @nodoc
class __$SurahDetailEntityCopyWithImpl<$Res>
    implements _$SurahDetailEntityCopyWith<$Res> {
  __$SurahDetailEntityCopyWithImpl(this._self, this._then);

  final _SurahDetailEntity _self;
  final $Res Function(_SurahDetailEntity) _then;

  /// Create a copy of SurahDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? nameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
    Object? verses = null,
  }) {
    return _then(_SurahDetailEntity(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _self.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      nameTranslation: null == nameTranslation
          ? _self.nameTranslation
          : nameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _self.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfAyahs: null == numberOfAyahs
          ? _self.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int,
      verses: null == verses
          ? _self._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseEntity>,
    ));
  }
}

// dart format on
