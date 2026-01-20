// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurahDto {
  int get number;
  int get numberOfVerses;
  SurahNameDto get name;
  SurahRevelationDto get revelation;

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SurahDtoCopyWith<SurahDto> get copyWith =>
      _$SurahDtoCopyWithImpl<SurahDto>(this as SurahDto, _$identity);

  /// Serializes this SurahDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SurahDto &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberOfVerses, numberOfVerses) ||
                other.numberOfVerses == numberOfVerses) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.revelation, revelation) ||
                other.revelation == revelation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, number, numberOfVerses, name, revelation);

  @override
  String toString() {
    return 'SurahDto(number: $number, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation)';
  }
}

/// @nodoc
abstract mixin class $SurahDtoCopyWith<$Res> {
  factory $SurahDtoCopyWith(SurahDto value, $Res Function(SurahDto) _then) =
      _$SurahDtoCopyWithImpl;
  @useResult
  $Res call(
      {int number,
      int numberOfVerses,
      SurahNameDto name,
      SurahRevelationDto revelation});

  $SurahNameDtoCopyWith<$Res> get name;
  $SurahRevelationDtoCopyWith<$Res> get revelation;
}

/// @nodoc
class _$SurahDtoCopyWithImpl<$Res> implements $SurahDtoCopyWith<$Res> {
  _$SurahDtoCopyWithImpl(this._self, this._then);

  final SurahDto _self;
  final $Res Function(SurahDto) _then;

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? numberOfVerses = null,
    Object? name = null,
    Object? revelation = null,
  }) {
    return _then(_self.copyWith(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfVerses: null == numberOfVerses
          ? _self.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as SurahNameDto,
      revelation: null == revelation
          ? _self.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as SurahRevelationDto,
    ));
  }

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahNameDtoCopyWith<$Res> get name {
    return $SurahNameDtoCopyWith<$Res>(_self.name, (value) {
      return _then(_self.copyWith(name: value));
    });
  }

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahRevelationDtoCopyWith<$Res> get revelation {
    return $SurahRevelationDtoCopyWith<$Res>(_self.revelation, (value) {
      return _then(_self.copyWith(revelation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SurahDto].
extension SurahDtoPatterns on SurahDto {
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
    TResult Function(_SurahDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahDto() when $default != null:
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
    TResult Function(_SurahDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDto():
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
    TResult? Function(_SurahDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDto() when $default != null:
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
    TResult Function(int number, int numberOfVerses, SurahNameDto name,
            SurahRevelationDto revelation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahDto() when $default != null:
        return $default(
            _that.number, _that.numberOfVerses, _that.name, _that.revelation);
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
    TResult Function(int number, int numberOfVerses, SurahNameDto name,
            SurahRevelationDto revelation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDto():
        return $default(
            _that.number, _that.numberOfVerses, _that.name, _that.revelation);
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
    TResult? Function(int number, int numberOfVerses, SurahNameDto name,
            SurahRevelationDto revelation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDto() when $default != null:
        return $default(
            _that.number, _that.numberOfVerses, _that.name, _that.revelation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SurahDto extends SurahDto {
  const _SurahDto(
      {required this.number,
      required this.numberOfVerses,
      required this.name,
      required this.revelation})
      : super._();
  factory _SurahDto.fromJson(Map<String, dynamic> json) =>
      _$SurahDtoFromJson(json);

  @override
  final int number;
  @override
  final int numberOfVerses;
  @override
  final SurahNameDto name;
  @override
  final SurahRevelationDto revelation;

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SurahDtoCopyWith<_SurahDto> get copyWith =>
      __$SurahDtoCopyWithImpl<_SurahDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SurahDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurahDto &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberOfVerses, numberOfVerses) ||
                other.numberOfVerses == numberOfVerses) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.revelation, revelation) ||
                other.revelation == revelation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, number, numberOfVerses, name, revelation);

  @override
  String toString() {
    return 'SurahDto(number: $number, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation)';
  }
}

/// @nodoc
abstract mixin class _$SurahDtoCopyWith<$Res>
    implements $SurahDtoCopyWith<$Res> {
  factory _$SurahDtoCopyWith(_SurahDto value, $Res Function(_SurahDto) _then) =
      __$SurahDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int number,
      int numberOfVerses,
      SurahNameDto name,
      SurahRevelationDto revelation});

  @override
  $SurahNameDtoCopyWith<$Res> get name;
  @override
  $SurahRevelationDtoCopyWith<$Res> get revelation;
}

/// @nodoc
class __$SurahDtoCopyWithImpl<$Res> implements _$SurahDtoCopyWith<$Res> {
  __$SurahDtoCopyWithImpl(this._self, this._then);

  final _SurahDto _self;
  final $Res Function(_SurahDto) _then;

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = null,
    Object? numberOfVerses = null,
    Object? name = null,
    Object? revelation = null,
  }) {
    return _then(_SurahDto(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfVerses: null == numberOfVerses
          ? _self.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as SurahNameDto,
      revelation: null == revelation
          ? _self.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as SurahRevelationDto,
    ));
  }

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahNameDtoCopyWith<$Res> get name {
    return $SurahNameDtoCopyWith<$Res>(_self.name, (value) {
      return _then(_self.copyWith(name: value));
    });
  }

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahRevelationDtoCopyWith<$Res> get revelation {
    return $SurahRevelationDtoCopyWith<$Res>(_self.revelation, (value) {
      return _then(_self.copyWith(revelation: value));
    });
  }
}

/// @nodoc
mixin _$SurahNameDto {
  String get short;
  String get long;
  SurahTranslationDto get transliteration;
  SurahTranslationDto get translation;

  /// Create a copy of SurahNameDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SurahNameDtoCopyWith<SurahNameDto> get copyWith =>
      _$SurahNameDtoCopyWithImpl<SurahNameDto>(
          this as SurahNameDto, _$identity);

  /// Serializes this SurahNameDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SurahNameDto &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, short, long, transliteration, translation);

  @override
  String toString() {
    return 'SurahNameDto(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }
}

/// @nodoc
abstract mixin class $SurahNameDtoCopyWith<$Res> {
  factory $SurahNameDtoCopyWith(
          SurahNameDto value, $Res Function(SurahNameDto) _then) =
      _$SurahNameDtoCopyWithImpl;
  @useResult
  $Res call(
      {String short,
      String long,
      SurahTranslationDto transliteration,
      SurahTranslationDto translation});

  $SurahTranslationDtoCopyWith<$Res> get transliteration;
  $SurahTranslationDtoCopyWith<$Res> get translation;
}

/// @nodoc
class _$SurahNameDtoCopyWithImpl<$Res> implements $SurahNameDtoCopyWith<$Res> {
  _$SurahNameDtoCopyWithImpl(this._self, this._then);

  final SurahNameDto _self;
  final $Res Function(SurahNameDto) _then;

  /// Create a copy of SurahNameDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_self.copyWith(
      short: null == short
          ? _self.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _self.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as SurahTranslationDto,
      translation: null == translation
          ? _self.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as SurahTranslationDto,
    ));
  }

  /// Create a copy of SurahNameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahTranslationDtoCopyWith<$Res> get transliteration {
    return $SurahTranslationDtoCopyWith<$Res>(_self.transliteration, (value) {
      return _then(_self.copyWith(transliteration: value));
    });
  }

  /// Create a copy of SurahNameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahTranslationDtoCopyWith<$Res> get translation {
    return $SurahTranslationDtoCopyWith<$Res>(_self.translation, (value) {
      return _then(_self.copyWith(translation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SurahNameDto].
extension SurahNameDtoPatterns on SurahNameDto {
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
    TResult Function(_SurahNameDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahNameDto() when $default != null:
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
    TResult Function(_SurahNameDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahNameDto():
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
    TResult? Function(_SurahNameDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahNameDto() when $default != null:
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
            String short,
            String long,
            SurahTranslationDto transliteration,
            SurahTranslationDto translation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahNameDto() when $default != null:
        return $default(
            _that.short, _that.long, _that.transliteration, _that.translation);
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
            String short,
            String long,
            SurahTranslationDto transliteration,
            SurahTranslationDto translation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahNameDto():
        return $default(
            _that.short, _that.long, _that.transliteration, _that.translation);
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
            String short,
            String long,
            SurahTranslationDto transliteration,
            SurahTranslationDto translation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahNameDto() when $default != null:
        return $default(
            _that.short, _that.long, _that.transliteration, _that.translation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SurahNameDto implements SurahNameDto {
  const _SurahNameDto(
      {required this.short,
      required this.long,
      required this.transliteration,
      required this.translation});
  factory _SurahNameDto.fromJson(Map<String, dynamic> json) =>
      _$SurahNameDtoFromJson(json);

  @override
  final String short;
  @override
  final String long;
  @override
  final SurahTranslationDto transliteration;
  @override
  final SurahTranslationDto translation;

  /// Create a copy of SurahNameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SurahNameDtoCopyWith<_SurahNameDto> get copyWith =>
      __$SurahNameDtoCopyWithImpl<_SurahNameDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SurahNameDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurahNameDto &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, short, long, transliteration, translation);

  @override
  String toString() {
    return 'SurahNameDto(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }
}

/// @nodoc
abstract mixin class _$SurahNameDtoCopyWith<$Res>
    implements $SurahNameDtoCopyWith<$Res> {
  factory _$SurahNameDtoCopyWith(
          _SurahNameDto value, $Res Function(_SurahNameDto) _then) =
      __$SurahNameDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String short,
      String long,
      SurahTranslationDto transliteration,
      SurahTranslationDto translation});

  @override
  $SurahTranslationDtoCopyWith<$Res> get transliteration;
  @override
  $SurahTranslationDtoCopyWith<$Res> get translation;
}

/// @nodoc
class __$SurahNameDtoCopyWithImpl<$Res>
    implements _$SurahNameDtoCopyWith<$Res> {
  __$SurahNameDtoCopyWithImpl(this._self, this._then);

  final _SurahNameDto _self;
  final $Res Function(_SurahNameDto) _then;

  /// Create a copy of SurahNameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_SurahNameDto(
      short: null == short
          ? _self.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _self.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as SurahTranslationDto,
      translation: null == translation
          ? _self.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as SurahTranslationDto,
    ));
  }

  /// Create a copy of SurahNameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahTranslationDtoCopyWith<$Res> get transliteration {
    return $SurahTranslationDtoCopyWith<$Res>(_self.transliteration, (value) {
      return _then(_self.copyWith(transliteration: value));
    });
  }

  /// Create a copy of SurahNameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahTranslationDtoCopyWith<$Res> get translation {
    return $SurahTranslationDtoCopyWith<$Res>(_self.translation, (value) {
      return _then(_self.copyWith(translation: value));
    });
  }
}

/// @nodoc
mixin _$SurahRevelationDto {
  String get arab;
  String get en;
  String get id;

  /// Create a copy of SurahRevelationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SurahRevelationDtoCopyWith<SurahRevelationDto> get copyWith =>
      _$SurahRevelationDtoCopyWithImpl<SurahRevelationDto>(
          this as SurahRevelationDto, _$identity);

  /// Serializes this SurahRevelationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SurahRevelationDto &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arab, en, id);

  @override
  String toString() {
    return 'SurahRevelationDto(arab: $arab, en: $en, id: $id)';
  }
}

/// @nodoc
abstract mixin class $SurahRevelationDtoCopyWith<$Res> {
  factory $SurahRevelationDtoCopyWith(
          SurahRevelationDto value, $Res Function(SurahRevelationDto) _then) =
      _$SurahRevelationDtoCopyWithImpl;
  @useResult
  $Res call({String arab, String en, String id});
}

/// @nodoc
class _$SurahRevelationDtoCopyWithImpl<$Res>
    implements $SurahRevelationDtoCopyWith<$Res> {
  _$SurahRevelationDtoCopyWithImpl(this._self, this._then);

  final SurahRevelationDto _self;
  final $Res Function(SurahRevelationDto) _then;

  /// Create a copy of SurahRevelationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      arab: null == arab
          ? _self.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _self.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SurahRevelationDto].
extension SurahRevelationDtoPatterns on SurahRevelationDto {
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
    TResult Function(_SurahRevelationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahRevelationDto() when $default != null:
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
    TResult Function(_SurahRevelationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahRevelationDto():
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
    TResult? Function(_SurahRevelationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahRevelationDto() when $default != null:
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
    TResult Function(String arab, String en, String id)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahRevelationDto() when $default != null:
        return $default(_that.arab, _that.en, _that.id);
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
    TResult Function(String arab, String en, String id) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahRevelationDto():
        return $default(_that.arab, _that.en, _that.id);
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
    TResult? Function(String arab, String en, String id)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahRevelationDto() when $default != null:
        return $default(_that.arab, _that.en, _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SurahRevelationDto implements SurahRevelationDto {
  const _SurahRevelationDto(
      {required this.arab, required this.en, required this.id});
  factory _SurahRevelationDto.fromJson(Map<String, dynamic> json) =>
      _$SurahRevelationDtoFromJson(json);

  @override
  final String arab;
  @override
  final String en;
  @override
  final String id;

  /// Create a copy of SurahRevelationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SurahRevelationDtoCopyWith<_SurahRevelationDto> get copyWith =>
      __$SurahRevelationDtoCopyWithImpl<_SurahRevelationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SurahRevelationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurahRevelationDto &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arab, en, id);

  @override
  String toString() {
    return 'SurahRevelationDto(arab: $arab, en: $en, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$SurahRevelationDtoCopyWith<$Res>
    implements $SurahRevelationDtoCopyWith<$Res> {
  factory _$SurahRevelationDtoCopyWith(
          _SurahRevelationDto value, $Res Function(_SurahRevelationDto) _then) =
      __$SurahRevelationDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String arab, String en, String id});
}

/// @nodoc
class __$SurahRevelationDtoCopyWithImpl<$Res>
    implements _$SurahRevelationDtoCopyWith<$Res> {
  __$SurahRevelationDtoCopyWithImpl(this._self, this._then);

  final _SurahRevelationDto _self;
  final $Res Function(_SurahRevelationDto) _then;

  /// Create a copy of SurahRevelationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? arab = null,
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_SurahRevelationDto(
      arab: null == arab
          ? _self.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _self.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SurahTranslationDto {
  String get en;
  String get id;

  /// Create a copy of SurahTranslationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SurahTranslationDtoCopyWith<SurahTranslationDto> get copyWith =>
      _$SurahTranslationDtoCopyWithImpl<SurahTranslationDto>(
          this as SurahTranslationDto, _$identity);

  /// Serializes this SurahTranslationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SurahTranslationDto &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @override
  String toString() {
    return 'SurahTranslationDto(en: $en, id: $id)';
  }
}

/// @nodoc
abstract mixin class $SurahTranslationDtoCopyWith<$Res> {
  factory $SurahTranslationDtoCopyWith(
          SurahTranslationDto value, $Res Function(SurahTranslationDto) _then) =
      _$SurahTranslationDtoCopyWithImpl;
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class _$SurahTranslationDtoCopyWithImpl<$Res>
    implements $SurahTranslationDtoCopyWith<$Res> {
  _$SurahTranslationDtoCopyWithImpl(this._self, this._then);

  final SurahTranslationDto _self;
  final $Res Function(SurahTranslationDto) _then;

  /// Create a copy of SurahTranslationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      en: null == en
          ? _self.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SurahTranslationDto].
extension SurahTranslationDtoPatterns on SurahTranslationDto {
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
    TResult Function(_SurahTranslationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahTranslationDto() when $default != null:
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
    TResult Function(_SurahTranslationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahTranslationDto():
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
    TResult? Function(_SurahTranslationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahTranslationDto() when $default != null:
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
    TResult Function(String en, String id)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahTranslationDto() when $default != null:
        return $default(_that.en, _that.id);
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
    TResult Function(String en, String id) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahTranslationDto():
        return $default(_that.en, _that.id);
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
    TResult? Function(String en, String id)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahTranslationDto() when $default != null:
        return $default(_that.en, _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SurahTranslationDto implements SurahTranslationDto {
  const _SurahTranslationDto({required this.en, required this.id});
  factory _SurahTranslationDto.fromJson(Map<String, dynamic> json) =>
      _$SurahTranslationDtoFromJson(json);

  @override
  final String en;
  @override
  final String id;

  /// Create a copy of SurahTranslationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SurahTranslationDtoCopyWith<_SurahTranslationDto> get copyWith =>
      __$SurahTranslationDtoCopyWithImpl<_SurahTranslationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SurahTranslationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurahTranslationDto &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @override
  String toString() {
    return 'SurahTranslationDto(en: $en, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$SurahTranslationDtoCopyWith<$Res>
    implements $SurahTranslationDtoCopyWith<$Res> {
  factory _$SurahTranslationDtoCopyWith(_SurahTranslationDto value,
          $Res Function(_SurahTranslationDto) _then) =
      __$SurahTranslationDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class __$SurahTranslationDtoCopyWithImpl<$Res>
    implements _$SurahTranslationDtoCopyWith<$Res> {
  __$SurahTranslationDtoCopyWithImpl(this._self, this._then);

  final _SurahTranslationDto _self;
  final $Res Function(_SurahTranslationDto) _then;

  /// Create a copy of SurahTranslationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_SurahTranslationDto(
      en: null == en
          ? _self.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
