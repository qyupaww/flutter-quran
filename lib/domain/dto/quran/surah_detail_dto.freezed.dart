// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurahDetailDto {
  int get number;
  int get numberOfVerses;
  SurahNameObjDto get name;
  SurahRevelationDto get revelation;
  List<VerseDto> get verses;

  /// Create a copy of SurahDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SurahDetailDtoCopyWith<SurahDetailDto> get copyWith =>
      _$SurahDetailDtoCopyWithImpl<SurahDetailDto>(
          this as SurahDetailDto, _$identity);

  /// Serializes this SurahDetailDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SurahDetailDto &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberOfVerses, numberOfVerses) ||
                other.numberOfVerses == numberOfVerses) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.revelation, revelation) ||
                other.revelation == revelation) &&
            const DeepCollectionEquality().equals(other.verses, verses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, numberOfVerses, name,
      revelation, const DeepCollectionEquality().hash(verses));

  @override
  String toString() {
    return 'SurahDetailDto(number: $number, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation, verses: $verses)';
  }
}

/// @nodoc
abstract mixin class $SurahDetailDtoCopyWith<$Res> {
  factory $SurahDetailDtoCopyWith(
          SurahDetailDto value, $Res Function(SurahDetailDto) _then) =
      _$SurahDetailDtoCopyWithImpl;
  @useResult
  $Res call(
      {int number,
      int numberOfVerses,
      SurahNameObjDto name,
      SurahRevelationDto revelation,
      List<VerseDto> verses});

  $SurahNameObjDtoCopyWith<$Res> get name;
  $SurahRevelationDtoCopyWith<$Res> get revelation;
}

/// @nodoc
class _$SurahDetailDtoCopyWithImpl<$Res>
    implements $SurahDetailDtoCopyWith<$Res> {
  _$SurahDetailDtoCopyWithImpl(this._self, this._then);

  final SurahDetailDto _self;
  final $Res Function(SurahDetailDto) _then;

  /// Create a copy of SurahDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? numberOfVerses = null,
    Object? name = null,
    Object? revelation = null,
    Object? verses = null,
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
              as SurahNameObjDto,
      revelation: null == revelation
          ? _self.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as SurahRevelationDto,
      verses: null == verses
          ? _self.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseDto>,
    ));
  }

  /// Create a copy of SurahDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahNameObjDtoCopyWith<$Res> get name {
    return $SurahNameObjDtoCopyWith<$Res>(_self.name, (value) {
      return _then(_self.copyWith(name: value));
    });
  }

  /// Create a copy of SurahDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahRevelationDtoCopyWith<$Res> get revelation {
    return $SurahRevelationDtoCopyWith<$Res>(_self.revelation, (value) {
      return _then(_self.copyWith(revelation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SurahDetailDto].
extension SurahDetailDtoPatterns on SurahDetailDto {
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
    TResult Function(_SurahDetailDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahDetailDto() when $default != null:
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
    TResult Function(_SurahDetailDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDetailDto():
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
    TResult? Function(_SurahDetailDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDetailDto() when $default != null:
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
    TResult Function(int number, int numberOfVerses, SurahNameObjDto name,
            SurahRevelationDto revelation, List<VerseDto> verses)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahDetailDto() when $default != null:
        return $default(_that.number, _that.numberOfVerses, _that.name,
            _that.revelation, _that.verses);
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
    TResult Function(int number, int numberOfVerses, SurahNameObjDto name,
            SurahRevelationDto revelation, List<VerseDto> verses)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDetailDto():
        return $default(_that.number, _that.numberOfVerses, _that.name,
            _that.revelation, _that.verses);
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
    TResult? Function(int number, int numberOfVerses, SurahNameObjDto name,
            SurahRevelationDto revelation, List<VerseDto> verses)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahDetailDto() when $default != null:
        return $default(_that.number, _that.numberOfVerses, _that.name,
            _that.revelation, _that.verses);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SurahDetailDto extends SurahDetailDto {
  const _SurahDetailDto(
      {required this.number,
      required this.numberOfVerses,
      required this.name,
      required this.revelation,
      required final List<VerseDto> verses})
      : _verses = verses,
        super._();
  factory _SurahDetailDto.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailDtoFromJson(json);

  @override
  final int number;
  @override
  final int numberOfVerses;
  @override
  final SurahNameObjDto name;
  @override
  final SurahRevelationDto revelation;
  final List<VerseDto> _verses;
  @override
  List<VerseDto> get verses {
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verses);
  }

  /// Create a copy of SurahDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SurahDetailDtoCopyWith<_SurahDetailDto> get copyWith =>
      __$SurahDetailDtoCopyWithImpl<_SurahDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SurahDetailDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurahDetailDto &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberOfVerses, numberOfVerses) ||
                other.numberOfVerses == numberOfVerses) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.revelation, revelation) ||
                other.revelation == revelation) &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, numberOfVerses, name,
      revelation, const DeepCollectionEquality().hash(_verses));

  @override
  String toString() {
    return 'SurahDetailDto(number: $number, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation, verses: $verses)';
  }
}

/// @nodoc
abstract mixin class _$SurahDetailDtoCopyWith<$Res>
    implements $SurahDetailDtoCopyWith<$Res> {
  factory _$SurahDetailDtoCopyWith(
          _SurahDetailDto value, $Res Function(_SurahDetailDto) _then) =
      __$SurahDetailDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int number,
      int numberOfVerses,
      SurahNameObjDto name,
      SurahRevelationDto revelation,
      List<VerseDto> verses});

  @override
  $SurahNameObjDtoCopyWith<$Res> get name;
  @override
  $SurahRevelationDtoCopyWith<$Res> get revelation;
}

/// @nodoc
class __$SurahDetailDtoCopyWithImpl<$Res>
    implements _$SurahDetailDtoCopyWith<$Res> {
  __$SurahDetailDtoCopyWithImpl(this._self, this._then);

  final _SurahDetailDto _self;
  final $Res Function(_SurahDetailDto) _then;

  /// Create a copy of SurahDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = null,
    Object? numberOfVerses = null,
    Object? name = null,
    Object? revelation = null,
    Object? verses = null,
  }) {
    return _then(_SurahDetailDto(
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
              as SurahNameObjDto,
      revelation: null == revelation
          ? _self.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as SurahRevelationDto,
      verses: null == verses
          ? _self._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseDto>,
    ));
  }

  /// Create a copy of SurahDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahNameObjDtoCopyWith<$Res> get name {
    return $SurahNameObjDtoCopyWith<$Res>(_self.name, (value) {
      return _then(_self.copyWith(name: value));
    });
  }

  /// Create a copy of SurahDetailDto
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
mixin _$SurahNameObjDto {
  String get short;
  String get long;
  SurahTransliterationDto get transliteration;
  SurahTranslationDto get translation;

  /// Create a copy of SurahNameObjDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SurahNameObjDtoCopyWith<SurahNameObjDto> get copyWith =>
      _$SurahNameObjDtoCopyWithImpl<SurahNameObjDto>(
          this as SurahNameObjDto, _$identity);

  /// Serializes this SurahNameObjDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SurahNameObjDto &&
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
    return 'SurahNameObjDto(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }
}

/// @nodoc
abstract mixin class $SurahNameObjDtoCopyWith<$Res> {
  factory $SurahNameObjDtoCopyWith(
          SurahNameObjDto value, $Res Function(SurahNameObjDto) _then) =
      _$SurahNameObjDtoCopyWithImpl;
  @useResult
  $Res call(
      {String short,
      String long,
      SurahTransliterationDto transliteration,
      SurahTranslationDto translation});

  $SurahTransliterationDtoCopyWith<$Res> get transliteration;
  $SurahTranslationDtoCopyWith<$Res> get translation;
}

/// @nodoc
class _$SurahNameObjDtoCopyWithImpl<$Res>
    implements $SurahNameObjDtoCopyWith<$Res> {
  _$SurahNameObjDtoCopyWithImpl(this._self, this._then);

  final SurahNameObjDto _self;
  final $Res Function(SurahNameObjDto) _then;

  /// Create a copy of SurahNameObjDto
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
              as SurahTransliterationDto,
      translation: null == translation
          ? _self.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as SurahTranslationDto,
    ));
  }

  /// Create a copy of SurahNameObjDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahTransliterationDtoCopyWith<$Res> get transliteration {
    return $SurahTransliterationDtoCopyWith<$Res>(_self.transliteration,
        (value) {
      return _then(_self.copyWith(transliteration: value));
    });
  }

  /// Create a copy of SurahNameObjDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahTranslationDtoCopyWith<$Res> get translation {
    return $SurahTranslationDtoCopyWith<$Res>(_self.translation, (value) {
      return _then(_self.copyWith(translation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SurahNameObjDto].
extension SurahNameObjDtoPatterns on SurahNameObjDto {
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
    TResult Function(_SurahNameObjDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahNameObjDto() when $default != null:
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
    TResult Function(_SurahNameObjDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahNameObjDto():
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
    TResult? Function(_SurahNameObjDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahNameObjDto() when $default != null:
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
            SurahTransliterationDto transliteration,
            SurahTranslationDto translation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahNameObjDto() when $default != null:
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
            SurahTransliterationDto transliteration,
            SurahTranslationDto translation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahNameObjDto():
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
            SurahTransliterationDto transliteration,
            SurahTranslationDto translation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahNameObjDto() when $default != null:
        return $default(
            _that.short, _that.long, _that.transliteration, _that.translation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SurahNameObjDto implements SurahNameObjDto {
  const _SurahNameObjDto(
      {required this.short,
      required this.long,
      required this.transliteration,
      required this.translation});
  factory _SurahNameObjDto.fromJson(Map<String, dynamic> json) =>
      _$SurahNameObjDtoFromJson(json);

  @override
  final String short;
  @override
  final String long;
  @override
  final SurahTransliterationDto transliteration;
  @override
  final SurahTranslationDto translation;

  /// Create a copy of SurahNameObjDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SurahNameObjDtoCopyWith<_SurahNameObjDto> get copyWith =>
      __$SurahNameObjDtoCopyWithImpl<_SurahNameObjDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SurahNameObjDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurahNameObjDto &&
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
    return 'SurahNameObjDto(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }
}

/// @nodoc
abstract mixin class _$SurahNameObjDtoCopyWith<$Res>
    implements $SurahNameObjDtoCopyWith<$Res> {
  factory _$SurahNameObjDtoCopyWith(
          _SurahNameObjDto value, $Res Function(_SurahNameObjDto) _then) =
      __$SurahNameObjDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String short,
      String long,
      SurahTransliterationDto transliteration,
      SurahTranslationDto translation});

  @override
  $SurahTransliterationDtoCopyWith<$Res> get transliteration;
  @override
  $SurahTranslationDtoCopyWith<$Res> get translation;
}

/// @nodoc
class __$SurahNameObjDtoCopyWithImpl<$Res>
    implements _$SurahNameObjDtoCopyWith<$Res> {
  __$SurahNameObjDtoCopyWithImpl(this._self, this._then);

  final _SurahNameObjDto _self;
  final $Res Function(_SurahNameObjDto) _then;

  /// Create a copy of SurahNameObjDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_SurahNameObjDto(
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
              as SurahTransliterationDto,
      translation: null == translation
          ? _self.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as SurahTranslationDto,
    ));
  }

  /// Create a copy of SurahNameObjDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahTransliterationDtoCopyWith<$Res> get transliteration {
    return $SurahTransliterationDtoCopyWith<$Res>(_self.transliteration,
        (value) {
      return _then(_self.copyWith(transliteration: value));
    });
  }

  /// Create a copy of SurahNameObjDto
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
mixin _$SurahTransliterationDto {
  String get en;
  String get id;

  /// Create a copy of SurahTransliterationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SurahTransliterationDtoCopyWith<SurahTransliterationDto> get copyWith =>
      _$SurahTransliterationDtoCopyWithImpl<SurahTransliterationDto>(
          this as SurahTransliterationDto, _$identity);

  /// Serializes this SurahTransliterationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SurahTransliterationDto &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @override
  String toString() {
    return 'SurahTransliterationDto(en: $en, id: $id)';
  }
}

/// @nodoc
abstract mixin class $SurahTransliterationDtoCopyWith<$Res> {
  factory $SurahTransliterationDtoCopyWith(SurahTransliterationDto value,
          $Res Function(SurahTransliterationDto) _then) =
      _$SurahTransliterationDtoCopyWithImpl;
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class _$SurahTransliterationDtoCopyWithImpl<$Res>
    implements $SurahTransliterationDtoCopyWith<$Res> {
  _$SurahTransliterationDtoCopyWithImpl(this._self, this._then);

  final SurahTransliterationDto _self;
  final $Res Function(SurahTransliterationDto) _then;

  /// Create a copy of SurahTransliterationDto
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

/// Adds pattern-matching-related methods to [SurahTransliterationDto].
extension SurahTransliterationDtoPatterns on SurahTransliterationDto {
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
    TResult Function(_SurahTransliterationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SurahTransliterationDto() when $default != null:
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
    TResult Function(_SurahTransliterationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahTransliterationDto():
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
    TResult? Function(_SurahTransliterationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SurahTransliterationDto() when $default != null:
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
      case _SurahTransliterationDto() when $default != null:
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
      case _SurahTransliterationDto():
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
      case _SurahTransliterationDto() when $default != null:
        return $default(_that.en, _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SurahTransliterationDto implements SurahTransliterationDto {
  const _SurahTransliterationDto({required this.en, required this.id});
  factory _SurahTransliterationDto.fromJson(Map<String, dynamic> json) =>
      _$SurahTransliterationDtoFromJson(json);

  @override
  final String en;
  @override
  final String id;

  /// Create a copy of SurahTransliterationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SurahTransliterationDtoCopyWith<_SurahTransliterationDto> get copyWith =>
      __$SurahTransliterationDtoCopyWithImpl<_SurahTransliterationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SurahTransliterationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurahTransliterationDto &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @override
  String toString() {
    return 'SurahTransliterationDto(en: $en, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$SurahTransliterationDtoCopyWith<$Res>
    implements $SurahTransliterationDtoCopyWith<$Res> {
  factory _$SurahTransliterationDtoCopyWith(_SurahTransliterationDto value,
          $Res Function(_SurahTransliterationDto) _then) =
      __$SurahTransliterationDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class __$SurahTransliterationDtoCopyWithImpl<$Res>
    implements _$SurahTransliterationDtoCopyWith<$Res> {
  __$SurahTransliterationDtoCopyWithImpl(this._self, this._then);

  final _SurahTransliterationDto _self;
  final $Res Function(_SurahTransliterationDto) _then;

  /// Create a copy of SurahTransliterationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_SurahTransliterationDto(
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

// dart format on
