// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verse_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerseDto {
  VerseNumberDto get number;
  VerseTextDto get text;
  VerseTranslationDto get translation;

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerseDtoCopyWith<VerseDto> get copyWith =>
      _$VerseDtoCopyWithImpl<VerseDto>(this as VerseDto, _$identity);

  /// Serializes this VerseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerseDto &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, text, translation);

  @override
  String toString() {
    return 'VerseDto(number: $number, text: $text, translation: $translation)';
  }
}

/// @nodoc
abstract mixin class $VerseDtoCopyWith<$Res> {
  factory $VerseDtoCopyWith(VerseDto value, $Res Function(VerseDto) _then) =
      _$VerseDtoCopyWithImpl;
  @useResult
  $Res call(
      {VerseNumberDto number,
      VerseTextDto text,
      VerseTranslationDto translation});

  $VerseNumberDtoCopyWith<$Res> get number;
  $VerseTextDtoCopyWith<$Res> get text;
  $VerseTranslationDtoCopyWith<$Res> get translation;
}

/// @nodoc
class _$VerseDtoCopyWithImpl<$Res> implements $VerseDtoCopyWith<$Res> {
  _$VerseDtoCopyWithImpl(this._self, this._then);

  final VerseDto _self;
  final $Res Function(VerseDto) _then;

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? translation = null,
  }) {
    return _then(_self.copyWith(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as VerseNumberDto,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as VerseTextDto,
      translation: null == translation
          ? _self.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as VerseTranslationDto,
    ));
  }

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerseNumberDtoCopyWith<$Res> get number {
    return $VerseNumberDtoCopyWith<$Res>(_self.number, (value) {
      return _then(_self.copyWith(number: value));
    });
  }

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerseTextDtoCopyWith<$Res> get text {
    return $VerseTextDtoCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerseTranslationDtoCopyWith<$Res> get translation {
    return $VerseTranslationDtoCopyWith<$Res>(_self.translation, (value) {
      return _then(_self.copyWith(translation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VerseDto].
extension VerseDtoPatterns on VerseDto {
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
    TResult Function(_VerseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseDto() when $default != null:
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
    TResult Function(_VerseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseDto():
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
    TResult? Function(_VerseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseDto() when $default != null:
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
    TResult Function(VerseNumberDto number, VerseTextDto text,
            VerseTranslationDto translation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseDto() when $default != null:
        return $default(_that.number, _that.text, _that.translation);
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
    TResult Function(VerseNumberDto number, VerseTextDto text,
            VerseTranslationDto translation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseDto():
        return $default(_that.number, _that.text, _that.translation);
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
    TResult? Function(VerseNumberDto number, VerseTextDto text,
            VerseTranslationDto translation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseDto() when $default != null:
        return $default(_that.number, _that.text, _that.translation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerseDto extends VerseDto {
  const _VerseDto(
      {required this.number, required this.text, required this.translation})
      : super._();
  factory _VerseDto.fromJson(Map<String, dynamic> json) =>
      _$VerseDtoFromJson(json);

  @override
  final VerseNumberDto number;
  @override
  final VerseTextDto text;
  @override
  final VerseTranslationDto translation;

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerseDtoCopyWith<_VerseDto> get copyWith =>
      __$VerseDtoCopyWithImpl<_VerseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerseDto &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, text, translation);

  @override
  String toString() {
    return 'VerseDto(number: $number, text: $text, translation: $translation)';
  }
}

/// @nodoc
abstract mixin class _$VerseDtoCopyWith<$Res>
    implements $VerseDtoCopyWith<$Res> {
  factory _$VerseDtoCopyWith(_VerseDto value, $Res Function(_VerseDto) _then) =
      __$VerseDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {VerseNumberDto number,
      VerseTextDto text,
      VerseTranslationDto translation});

  @override
  $VerseNumberDtoCopyWith<$Res> get number;
  @override
  $VerseTextDtoCopyWith<$Res> get text;
  @override
  $VerseTranslationDtoCopyWith<$Res> get translation;
}

/// @nodoc
class __$VerseDtoCopyWithImpl<$Res> implements _$VerseDtoCopyWith<$Res> {
  __$VerseDtoCopyWithImpl(this._self, this._then);

  final _VerseDto _self;
  final $Res Function(_VerseDto) _then;

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? translation = null,
  }) {
    return _then(_VerseDto(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as VerseNumberDto,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as VerseTextDto,
      translation: null == translation
          ? _self.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as VerseTranslationDto,
    ));
  }

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerseNumberDtoCopyWith<$Res> get number {
    return $VerseNumberDtoCopyWith<$Res>(_self.number, (value) {
      return _then(_self.copyWith(number: value));
    });
  }

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerseTextDtoCopyWith<$Res> get text {
    return $VerseTextDtoCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of VerseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerseTranslationDtoCopyWith<$Res> get translation {
    return $VerseTranslationDtoCopyWith<$Res>(_self.translation, (value) {
      return _then(_self.copyWith(translation: value));
    });
  }
}

/// @nodoc
mixin _$VerseNumberDto {
  int get inQuran;
  int get inSurah;

  /// Create a copy of VerseNumberDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerseNumberDtoCopyWith<VerseNumberDto> get copyWith =>
      _$VerseNumberDtoCopyWithImpl<VerseNumberDto>(
          this as VerseNumberDto, _$identity);

  /// Serializes this VerseNumberDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerseNumberDto &&
            (identical(other.inQuran, inQuran) || other.inQuran == inQuran) &&
            (identical(other.inSurah, inSurah) || other.inSurah == inSurah));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inQuran, inSurah);

  @override
  String toString() {
    return 'VerseNumberDto(inQuran: $inQuran, inSurah: $inSurah)';
  }
}

/// @nodoc
abstract mixin class $VerseNumberDtoCopyWith<$Res> {
  factory $VerseNumberDtoCopyWith(
          VerseNumberDto value, $Res Function(VerseNumberDto) _then) =
      _$VerseNumberDtoCopyWithImpl;
  @useResult
  $Res call({int inQuran, int inSurah});
}

/// @nodoc
class _$VerseNumberDtoCopyWithImpl<$Res>
    implements $VerseNumberDtoCopyWith<$Res> {
  _$VerseNumberDtoCopyWithImpl(this._self, this._then);

  final VerseNumberDto _self;
  final $Res Function(VerseNumberDto) _then;

  /// Create a copy of VerseNumberDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inQuran = null,
    Object? inSurah = null,
  }) {
    return _then(_self.copyWith(
      inQuran: null == inQuran
          ? _self.inQuran
          : inQuran // ignore: cast_nullable_to_non_nullable
              as int,
      inSurah: null == inSurah
          ? _self.inSurah
          : inSurah // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerseNumberDto].
extension VerseNumberDtoPatterns on VerseNumberDto {
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
    TResult Function(_VerseNumberDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseNumberDto() when $default != null:
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
    TResult Function(_VerseNumberDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseNumberDto():
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
    TResult? Function(_VerseNumberDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseNumberDto() when $default != null:
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
    TResult Function(int inQuran, int inSurah)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseNumberDto() when $default != null:
        return $default(_that.inQuran, _that.inSurah);
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
    TResult Function(int inQuran, int inSurah) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseNumberDto():
        return $default(_that.inQuran, _that.inSurah);
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
    TResult? Function(int inQuran, int inSurah)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseNumberDto() when $default != null:
        return $default(_that.inQuran, _that.inSurah);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerseNumberDto implements VerseNumberDto {
  const _VerseNumberDto({required this.inQuran, required this.inSurah});
  factory _VerseNumberDto.fromJson(Map<String, dynamic> json) =>
      _$VerseNumberDtoFromJson(json);

  @override
  final int inQuran;
  @override
  final int inSurah;

  /// Create a copy of VerseNumberDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerseNumberDtoCopyWith<_VerseNumberDto> get copyWith =>
      __$VerseNumberDtoCopyWithImpl<_VerseNumberDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerseNumberDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerseNumberDto &&
            (identical(other.inQuran, inQuran) || other.inQuran == inQuran) &&
            (identical(other.inSurah, inSurah) || other.inSurah == inSurah));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inQuran, inSurah);

  @override
  String toString() {
    return 'VerseNumberDto(inQuran: $inQuran, inSurah: $inSurah)';
  }
}

/// @nodoc
abstract mixin class _$VerseNumberDtoCopyWith<$Res>
    implements $VerseNumberDtoCopyWith<$Res> {
  factory _$VerseNumberDtoCopyWith(
          _VerseNumberDto value, $Res Function(_VerseNumberDto) _then) =
      __$VerseNumberDtoCopyWithImpl;
  @override
  @useResult
  $Res call({int inQuran, int inSurah});
}

/// @nodoc
class __$VerseNumberDtoCopyWithImpl<$Res>
    implements _$VerseNumberDtoCopyWith<$Res> {
  __$VerseNumberDtoCopyWithImpl(this._self, this._then);

  final _VerseNumberDto _self;
  final $Res Function(_VerseNumberDto) _then;

  /// Create a copy of VerseNumberDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inQuran = null,
    Object? inSurah = null,
  }) {
    return _then(_VerseNumberDto(
      inQuran: null == inQuran
          ? _self.inQuran
          : inQuran // ignore: cast_nullable_to_non_nullable
              as int,
      inSurah: null == inSurah
          ? _self.inSurah
          : inSurah // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$VerseTextDto {
  String get arab;
  VerseTransliterationDto get transliteration;

  /// Create a copy of VerseTextDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerseTextDtoCopyWith<VerseTextDto> get copyWith =>
      _$VerseTextDtoCopyWithImpl<VerseTextDto>(
          this as VerseTextDto, _$identity);

  /// Serializes this VerseTextDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerseTextDto &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arab, transliteration);

  @override
  String toString() {
    return 'VerseTextDto(arab: $arab, transliteration: $transliteration)';
  }
}

/// @nodoc
abstract mixin class $VerseTextDtoCopyWith<$Res> {
  factory $VerseTextDtoCopyWith(
          VerseTextDto value, $Res Function(VerseTextDto) _then) =
      _$VerseTextDtoCopyWithImpl;
  @useResult
  $Res call({String arab, VerseTransliterationDto transliteration});

  $VerseTransliterationDtoCopyWith<$Res> get transliteration;
}

/// @nodoc
class _$VerseTextDtoCopyWithImpl<$Res> implements $VerseTextDtoCopyWith<$Res> {
  _$VerseTextDtoCopyWithImpl(this._self, this._then);

  final VerseTextDto _self;
  final $Res Function(VerseTextDto) _then;

  /// Create a copy of VerseTextDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? transliteration = null,
  }) {
    return _then(_self.copyWith(
      arab: null == arab
          ? _self.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _self.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as VerseTransliterationDto,
    ));
  }

  /// Create a copy of VerseTextDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerseTransliterationDtoCopyWith<$Res> get transliteration {
    return $VerseTransliterationDtoCopyWith<$Res>(_self.transliteration,
        (value) {
      return _then(_self.copyWith(transliteration: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VerseTextDto].
extension VerseTextDtoPatterns on VerseTextDto {
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
    TResult Function(_VerseTextDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseTextDto() when $default != null:
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
    TResult Function(_VerseTextDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTextDto():
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
    TResult? Function(_VerseTextDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTextDto() when $default != null:
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
    TResult Function(String arab, VerseTransliterationDto transliteration)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseTextDto() when $default != null:
        return $default(_that.arab, _that.transliteration);
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
    TResult Function(String arab, VerseTransliterationDto transliteration)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTextDto():
        return $default(_that.arab, _that.transliteration);
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
    TResult? Function(String arab, VerseTransliterationDto transliteration)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTextDto() when $default != null:
        return $default(_that.arab, _that.transliteration);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerseTextDto implements VerseTextDto {
  const _VerseTextDto({required this.arab, required this.transliteration});
  factory _VerseTextDto.fromJson(Map<String, dynamic> json) =>
      _$VerseTextDtoFromJson(json);

  @override
  final String arab;
  @override
  final VerseTransliterationDto transliteration;

  /// Create a copy of VerseTextDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerseTextDtoCopyWith<_VerseTextDto> get copyWith =>
      __$VerseTextDtoCopyWithImpl<_VerseTextDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerseTextDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerseTextDto &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arab, transliteration);

  @override
  String toString() {
    return 'VerseTextDto(arab: $arab, transliteration: $transliteration)';
  }
}

/// @nodoc
abstract mixin class _$VerseTextDtoCopyWith<$Res>
    implements $VerseTextDtoCopyWith<$Res> {
  factory _$VerseTextDtoCopyWith(
          _VerseTextDto value, $Res Function(_VerseTextDto) _then) =
      __$VerseTextDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String arab, VerseTransliterationDto transliteration});

  @override
  $VerseTransliterationDtoCopyWith<$Res> get transliteration;
}

/// @nodoc
class __$VerseTextDtoCopyWithImpl<$Res>
    implements _$VerseTextDtoCopyWith<$Res> {
  __$VerseTextDtoCopyWithImpl(this._self, this._then);

  final _VerseTextDto _self;
  final $Res Function(_VerseTextDto) _then;

  /// Create a copy of VerseTextDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? arab = null,
    Object? transliteration = null,
  }) {
    return _then(_VerseTextDto(
      arab: null == arab
          ? _self.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _self.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as VerseTransliterationDto,
    ));
  }

  /// Create a copy of VerseTextDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerseTransliterationDtoCopyWith<$Res> get transliteration {
    return $VerseTransliterationDtoCopyWith<$Res>(_self.transliteration,
        (value) {
      return _then(_self.copyWith(transliteration: value));
    });
  }
}

/// @nodoc
mixin _$VerseTransliterationDto {
  String get en;

  /// Create a copy of VerseTransliterationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerseTransliterationDtoCopyWith<VerseTransliterationDto> get copyWith =>
      _$VerseTransliterationDtoCopyWithImpl<VerseTransliterationDto>(
          this as VerseTransliterationDto, _$identity);

  /// Serializes this VerseTransliterationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerseTransliterationDto &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, en);

  @override
  String toString() {
    return 'VerseTransliterationDto(en: $en)';
  }
}

/// @nodoc
abstract mixin class $VerseTransliterationDtoCopyWith<$Res> {
  factory $VerseTransliterationDtoCopyWith(VerseTransliterationDto value,
          $Res Function(VerseTransliterationDto) _then) =
      _$VerseTransliterationDtoCopyWithImpl;
  @useResult
  $Res call({String en});
}

/// @nodoc
class _$VerseTransliterationDtoCopyWithImpl<$Res>
    implements $VerseTransliterationDtoCopyWith<$Res> {
  _$VerseTransliterationDtoCopyWithImpl(this._self, this._then);

  final VerseTransliterationDto _self;
  final $Res Function(VerseTransliterationDto) _then;

  /// Create a copy of VerseTransliterationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
  }) {
    return _then(_self.copyWith(
      en: null == en
          ? _self.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerseTransliterationDto].
extension VerseTransliterationDtoPatterns on VerseTransliterationDto {
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
    TResult Function(_VerseTransliterationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseTransliterationDto() when $default != null:
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
    TResult Function(_VerseTransliterationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTransliterationDto():
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
    TResult? Function(_VerseTransliterationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTransliterationDto() when $default != null:
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
    TResult Function(String en)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseTransliterationDto() when $default != null:
        return $default(_that.en);
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
    TResult Function(String en) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTransliterationDto():
        return $default(_that.en);
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
    TResult? Function(String en)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTransliterationDto() when $default != null:
        return $default(_that.en);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerseTransliterationDto implements VerseTransliterationDto {
  const _VerseTransliterationDto({required this.en});
  factory _VerseTransliterationDto.fromJson(Map<String, dynamic> json) =>
      _$VerseTransliterationDtoFromJson(json);

  @override
  final String en;

  /// Create a copy of VerseTransliterationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerseTransliterationDtoCopyWith<_VerseTransliterationDto> get copyWith =>
      __$VerseTransliterationDtoCopyWithImpl<_VerseTransliterationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerseTransliterationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerseTransliterationDto &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, en);

  @override
  String toString() {
    return 'VerseTransliterationDto(en: $en)';
  }
}

/// @nodoc
abstract mixin class _$VerseTransliterationDtoCopyWith<$Res>
    implements $VerseTransliterationDtoCopyWith<$Res> {
  factory _$VerseTransliterationDtoCopyWith(_VerseTransliterationDto value,
          $Res Function(_VerseTransliterationDto) _then) =
      __$VerseTransliterationDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String en});
}

/// @nodoc
class __$VerseTransliterationDtoCopyWithImpl<$Res>
    implements _$VerseTransliterationDtoCopyWith<$Res> {
  __$VerseTransliterationDtoCopyWithImpl(this._self, this._then);

  final _VerseTransliterationDto _self;
  final $Res Function(_VerseTransliterationDto) _then;

  /// Create a copy of VerseTransliterationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? en = null,
  }) {
    return _then(_VerseTransliterationDto(
      en: null == en
          ? _self.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$VerseTranslationDto {
  String get id;

  /// Create a copy of VerseTranslationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerseTranslationDtoCopyWith<VerseTranslationDto> get copyWith =>
      _$VerseTranslationDtoCopyWithImpl<VerseTranslationDto>(
          this as VerseTranslationDto, _$identity);

  /// Serializes this VerseTranslationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerseTranslationDto &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'VerseTranslationDto(id: $id)';
  }
}

/// @nodoc
abstract mixin class $VerseTranslationDtoCopyWith<$Res> {
  factory $VerseTranslationDtoCopyWith(
          VerseTranslationDto value, $Res Function(VerseTranslationDto) _then) =
      _$VerseTranslationDtoCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$VerseTranslationDtoCopyWithImpl<$Res>
    implements $VerseTranslationDtoCopyWith<$Res> {
  _$VerseTranslationDtoCopyWithImpl(this._self, this._then);

  final VerseTranslationDto _self;
  final $Res Function(VerseTranslationDto) _then;

  /// Create a copy of VerseTranslationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerseTranslationDto].
extension VerseTranslationDtoPatterns on VerseTranslationDto {
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
    TResult Function(_VerseTranslationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseTranslationDto() when $default != null:
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
    TResult Function(_VerseTranslationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTranslationDto():
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
    TResult? Function(_VerseTranslationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTranslationDto() when $default != null:
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
    TResult Function(String id)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerseTranslationDto() when $default != null:
        return $default(_that.id);
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
    TResult Function(String id) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTranslationDto():
        return $default(_that.id);
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
    TResult? Function(String id)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerseTranslationDto() when $default != null:
        return $default(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerseTranslationDto implements VerseTranslationDto {
  const _VerseTranslationDto({required this.id});
  factory _VerseTranslationDto.fromJson(Map<String, dynamic> json) =>
      _$VerseTranslationDtoFromJson(json);

  @override
  final String id;

  /// Create a copy of VerseTranslationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerseTranslationDtoCopyWith<_VerseTranslationDto> get copyWith =>
      __$VerseTranslationDtoCopyWithImpl<_VerseTranslationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerseTranslationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerseTranslationDto &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'VerseTranslationDto(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$VerseTranslationDtoCopyWith<$Res>
    implements $VerseTranslationDtoCopyWith<$Res> {
  factory _$VerseTranslationDtoCopyWith(_VerseTranslationDto value,
          $Res Function(_VerseTranslationDto) _then) =
      __$VerseTranslationDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$VerseTranslationDtoCopyWithImpl<$Res>
    implements _$VerseTranslationDtoCopyWith<$Res> {
  __$VerseTranslationDtoCopyWithImpl(this._self, this._then);

  final _VerseTranslationDto _self;
  final $Res Function(_VerseTranslationDto) _then;

  /// Create a copy of VerseTranslationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_VerseTranslationDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
