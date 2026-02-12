// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationPickerState {
  bool get isLoading;
  String? get errorMessage;
  int get step;
  List<Map<String, dynamic>> get provinces;
  List<Map<String, dynamic>> get cities;
  List<Map<String, dynamic>> get districts;
  List<Map<String, dynamic>> get filteredList;
  Map<String, dynamic>? get selectedProvince;
  Map<String, dynamic>? get selectedCity;

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationPickerStateCopyWith<LocationPickerState> get copyWith =>
      _$LocationPickerStateCopyWithImpl<LocationPickerState>(
          this as LocationPickerState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationPickerState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.step, step) || other.step == step) &&
            const DeepCollectionEquality().equals(other.provinces, provinces) &&
            const DeepCollectionEquality().equals(other.cities, cities) &&
            const DeepCollectionEquality().equals(other.districts, districts) &&
            const DeepCollectionEquality()
                .equals(other.filteredList, filteredList) &&
            const DeepCollectionEquality()
                .equals(other.selectedProvince, selectedProvince) &&
            const DeepCollectionEquality()
                .equals(other.selectedCity, selectedCity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      step,
      const DeepCollectionEquality().hash(provinces),
      const DeepCollectionEquality().hash(cities),
      const DeepCollectionEquality().hash(districts),
      const DeepCollectionEquality().hash(filteredList),
      const DeepCollectionEquality().hash(selectedProvince),
      const DeepCollectionEquality().hash(selectedCity));

  @override
  String toString() {
    return 'LocationPickerState(isLoading: $isLoading, errorMessage: $errorMessage, step: $step, provinces: $provinces, cities: $cities, districts: $districts, filteredList: $filteredList, selectedProvince: $selectedProvince, selectedCity: $selectedCity)';
  }
}

/// @nodoc
abstract mixin class $LocationPickerStateCopyWith<$Res> {
  factory $LocationPickerStateCopyWith(
          LocationPickerState value, $Res Function(LocationPickerState) _then) =
      _$LocationPickerStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      int step,
      List<Map<String, dynamic>> provinces,
      List<Map<String, dynamic>> cities,
      List<Map<String, dynamic>> districts,
      List<Map<String, dynamic>> filteredList,
      Map<String, dynamic>? selectedProvince,
      Map<String, dynamic>? selectedCity});
}

/// @nodoc
class _$LocationPickerStateCopyWithImpl<$Res>
    implements $LocationPickerStateCopyWith<$Res> {
  _$LocationPickerStateCopyWithImpl(this._self, this._then);

  final LocationPickerState _self;
  final $Res Function(LocationPickerState) _then;

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? step = null,
    Object? provinces = null,
    Object? cities = null,
    Object? districts = null,
    Object? filteredList = null,
    Object? selectedProvince = freezed,
    Object? selectedCity = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      provinces: null == provinces
          ? _self.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      cities: null == cities
          ? _self.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      districts: null == districts
          ? _self.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      filteredList: null == filteredList
          ? _self.filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      selectedProvince: freezed == selectedProvince
          ? _self.selectedProvince
          : selectedProvince // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      selectedCity: freezed == selectedCity
          ? _self.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LocationPickerState].
extension LocationPickerStatePatterns on LocationPickerState {
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
    TResult Function(_LocationPickerState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationPickerState() when $default != null:
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
    TResult Function(_LocationPickerState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationPickerState():
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
    TResult? Function(_LocationPickerState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationPickerState() when $default != null:
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
            bool isLoading,
            String? errorMessage,
            int step,
            List<Map<String, dynamic>> provinces,
            List<Map<String, dynamic>> cities,
            List<Map<String, dynamic>> districts,
            List<Map<String, dynamic>> filteredList,
            Map<String, dynamic>? selectedProvince,
            Map<String, dynamic>? selectedCity)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationPickerState() when $default != null:
        return $default(
            _that.isLoading,
            _that.errorMessage,
            _that.step,
            _that.provinces,
            _that.cities,
            _that.districts,
            _that.filteredList,
            _that.selectedProvince,
            _that.selectedCity);
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
            bool isLoading,
            String? errorMessage,
            int step,
            List<Map<String, dynamic>> provinces,
            List<Map<String, dynamic>> cities,
            List<Map<String, dynamic>> districts,
            List<Map<String, dynamic>> filteredList,
            Map<String, dynamic>? selectedProvince,
            Map<String, dynamic>? selectedCity)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationPickerState():
        return $default(
            _that.isLoading,
            _that.errorMessage,
            _that.step,
            _that.provinces,
            _that.cities,
            _that.districts,
            _that.filteredList,
            _that.selectedProvince,
            _that.selectedCity);
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
            bool isLoading,
            String? errorMessage,
            int step,
            List<Map<String, dynamic>> provinces,
            List<Map<String, dynamic>> cities,
            List<Map<String, dynamic>> districts,
            List<Map<String, dynamic>> filteredList,
            Map<String, dynamic>? selectedProvince,
            Map<String, dynamic>? selectedCity)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationPickerState() when $default != null:
        return $default(
            _that.isLoading,
            _that.errorMessage,
            _that.step,
            _that.provinces,
            _that.cities,
            _that.districts,
            _that.filteredList,
            _that.selectedProvince,
            _that.selectedCity);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LocationPickerState implements LocationPickerState {
  const _LocationPickerState(
      {this.isLoading = true,
      this.errorMessage = null,
      this.step = 0,
      final List<Map<String, dynamic>> provinces = const [],
      final List<Map<String, dynamic>> cities = const [],
      final List<Map<String, dynamic>> districts = const [],
      final List<Map<String, dynamic>> filteredList = const [],
      final Map<String, dynamic>? selectedProvince,
      final Map<String, dynamic>? selectedCity})
      : _provinces = provinces,
        _cities = cities,
        _districts = districts,
        _filteredList = filteredList,
        _selectedProvince = selectedProvince,
        _selectedCity = selectedCity;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final int step;
  final List<Map<String, dynamic>> _provinces;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get provinces {
    if (_provinces is EqualUnmodifiableListView) return _provinces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_provinces);
  }

  final List<Map<String, dynamic>> _cities;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<Map<String, dynamic>> _districts;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get districts {
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_districts);
  }

  final List<Map<String, dynamic>> _filteredList;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get filteredList {
    if (_filteredList is EqualUnmodifiableListView) return _filteredList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredList);
  }

  final Map<String, dynamic>? _selectedProvince;
  @override
  Map<String, dynamic>? get selectedProvince {
    final value = _selectedProvince;
    if (value == null) return null;
    if (_selectedProvince is EqualUnmodifiableMapView) return _selectedProvince;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _selectedCity;
  @override
  Map<String, dynamic>? get selectedCity {
    final value = _selectedCity;
    if (value == null) return null;
    if (_selectedCity is EqualUnmodifiableMapView) return _selectedCity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationPickerStateCopyWith<_LocationPickerState> get copyWith =>
      __$LocationPickerStateCopyWithImpl<_LocationPickerState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationPickerState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.step, step) || other.step == step) &&
            const DeepCollectionEquality()
                .equals(other._provinces, _provinces) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts) &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList) &&
            const DeepCollectionEquality()
                .equals(other._selectedProvince, _selectedProvince) &&
            const DeepCollectionEquality()
                .equals(other._selectedCity, _selectedCity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      step,
      const DeepCollectionEquality().hash(_provinces),
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_districts),
      const DeepCollectionEquality().hash(_filteredList),
      const DeepCollectionEquality().hash(_selectedProvince),
      const DeepCollectionEquality().hash(_selectedCity));

  @override
  String toString() {
    return 'LocationPickerState(isLoading: $isLoading, errorMessage: $errorMessage, step: $step, provinces: $provinces, cities: $cities, districts: $districts, filteredList: $filteredList, selectedProvince: $selectedProvince, selectedCity: $selectedCity)';
  }
}

/// @nodoc
abstract mixin class _$LocationPickerStateCopyWith<$Res>
    implements $LocationPickerStateCopyWith<$Res> {
  factory _$LocationPickerStateCopyWith(_LocationPickerState value,
          $Res Function(_LocationPickerState) _then) =
      __$LocationPickerStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      int step,
      List<Map<String, dynamic>> provinces,
      List<Map<String, dynamic>> cities,
      List<Map<String, dynamic>> districts,
      List<Map<String, dynamic>> filteredList,
      Map<String, dynamic>? selectedProvince,
      Map<String, dynamic>? selectedCity});
}

/// @nodoc
class __$LocationPickerStateCopyWithImpl<$Res>
    implements _$LocationPickerStateCopyWith<$Res> {
  __$LocationPickerStateCopyWithImpl(this._self, this._then);

  final _LocationPickerState _self;
  final $Res Function(_LocationPickerState) _then;

  /// Create a copy of LocationPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? step = null,
    Object? provinces = null,
    Object? cities = null,
    Object? districts = null,
    Object? filteredList = null,
    Object? selectedProvince = freezed,
    Object? selectedCity = freezed,
  }) {
    return _then(_LocationPickerState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      provinces: null == provinces
          ? _self._provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      cities: null == cities
          ? _self._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      districts: null == districts
          ? _self._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      filteredList: null == filteredList
          ? _self._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      selectedProvince: freezed == selectedProvince
          ? _self._selectedProvince
          : selectedProvince // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      selectedCity: freezed == selectedCity
          ? _self._selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
