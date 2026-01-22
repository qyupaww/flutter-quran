// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_time_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrayerTimeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PrayerTimeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PrayerTimeEvent()';
  }
}

/// @nodoc
class $PrayerTimeEventCopyWith<$Res> {
  $PrayerTimeEventCopyWith(
      PrayerTimeEvent _, $Res Function(PrayerTimeEvent) __);
}

/// Adds pattern-matching-related methods to [PrayerTimeEvent].
extension PrayerTimeEventPatterns on PrayerTimeEvent {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_TimerTicked value)? timerTicked,
    TResult Function(_ToggleDateFormat value)? toggleDateFormat,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _LocationChanged() when locationChanged != null:
        return locationChanged(_that);
      case _TimerTicked() when timerTicked != null:
        return timerTicked(_that);
      case _ToggleDateFormat() when toggleDateFormat != null:
        return toggleDateFormat(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_TimerTicked value) timerTicked,
    required TResult Function(_ToggleDateFormat value) toggleDateFormat,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case _LocationChanged():
        return locationChanged(_that);
      case _TimerTicked():
        return timerTicked(_that);
      case _ToggleDateFormat():
        return toggleDateFormat(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_TimerTicked value)? timerTicked,
    TResult? Function(_ToggleDateFormat value)? toggleDateFormat,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _LocationChanged() when locationChanged != null:
        return locationChanged(_that);
      case _TimerTicked() when timerTicked != null:
        return timerTicked(_that);
      case _ToggleDateFormat() when toggleDateFormat != null:
        return toggleDateFormat(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String province, String city, String district, double lat,
            double long)?
        locationChanged,
    TResult Function()? timerTicked,
    TResult Function()? toggleDateFormat,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _LocationChanged() when locationChanged != null:
        return locationChanged(
            _that.province, _that.city, _that.district, _that.lat, _that.long);
      case _TimerTicked() when timerTicked != null:
        return timerTicked();
      case _ToggleDateFormat() when toggleDateFormat != null:
        return toggleDateFormat();
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
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String province, String city, String district,
            double lat, double long)
        locationChanged,
    required TResult Function() timerTicked,
    required TResult Function() toggleDateFormat,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case _LocationChanged():
        return locationChanged(
            _that.province, _that.city, _that.district, _that.lat, _that.long);
      case _TimerTicked():
        return timerTicked();
      case _ToggleDateFormat():
        return toggleDateFormat();
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String province, String city, String district, double lat,
            double long)?
        locationChanged,
    TResult? Function()? timerTicked,
    TResult? Function()? toggleDateFormat,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _LocationChanged() when locationChanged != null:
        return locationChanged(
            _that.province, _that.city, _that.district, _that.lat, _that.long);
      case _TimerTicked() when timerTicked != null:
        return timerTicked();
      case _ToggleDateFormat() when toggleDateFormat != null:
        return toggleDateFormat();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements PrayerTimeEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PrayerTimeEvent.started()';
  }
}

/// @nodoc

class _LocationChanged implements PrayerTimeEvent {
  const _LocationChanged(
      this.province, this.city, this.district, this.lat, this.long);

  final String province;
  final String city;
  final String district;
  final double lat;
  final double long;

  /// Create a copy of PrayerTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      __$LocationChangedCopyWithImpl<_LocationChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationChanged &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, province, city, district, lat, long);

  @override
  String toString() {
    return 'PrayerTimeEvent.locationChanged(province: $province, city: $city, district: $district, lat: $lat, long: $long)';
  }
}

/// @nodoc
abstract mixin class _$LocationChangedCopyWith<$Res>
    implements $PrayerTimeEventCopyWith<$Res> {
  factory _$LocationChangedCopyWith(
          _LocationChanged value, $Res Function(_LocationChanged) _then) =
      __$LocationChangedCopyWithImpl;
  @useResult
  $Res call(
      {String province, String city, String district, double lat, double long});
}

/// @nodoc
class __$LocationChangedCopyWithImpl<$Res>
    implements _$LocationChangedCopyWith<$Res> {
  __$LocationChangedCopyWithImpl(this._self, this._then);

  final _LocationChanged _self;
  final $Res Function(_LocationChanged) _then;

  /// Create a copy of PrayerTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? province = null,
    Object? city = null,
    Object? district = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_LocationChanged(
      null == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      null == district
          ? _self.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _TimerTicked implements PrayerTimeEvent {
  const _TimerTicked();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TimerTicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PrayerTimeEvent.timerTicked()';
  }
}

/// @nodoc

class _ToggleDateFormat implements PrayerTimeEvent {
  const _ToggleDateFormat();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ToggleDateFormat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PrayerTimeEvent.toggleDateFormat()';
  }
}

/// @nodoc
mixin _$PrayerTimeState {
  bool get isLoading;
  String get locationName;
  String get hoursLeft;
  String get minutesLeft;
  String get secondsLeft;
  String get nextPrayerName;
  String get nextPrayerTime;
  String get currentDateDisplay;
  bool get isHijri;
  @JsonKey(includeFromJson: false, includeToJson: false)
  dynamic get prayerTimesData;
  List<Map<String, String>> get dailyPrayers;

  /// Create a copy of PrayerTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PrayerTimeStateCopyWith<PrayerTimeState> get copyWith =>
      _$PrayerTimeStateCopyWithImpl<PrayerTimeState>(
          this as PrayerTimeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrayerTimeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.hoursLeft, hoursLeft) ||
                other.hoursLeft == hoursLeft) &&
            (identical(other.minutesLeft, minutesLeft) ||
                other.minutesLeft == minutesLeft) &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft) &&
            (identical(other.nextPrayerName, nextPrayerName) ||
                other.nextPrayerName == nextPrayerName) &&
            (identical(other.nextPrayerTime, nextPrayerTime) ||
                other.nextPrayerTime == nextPrayerTime) &&
            (identical(other.currentDateDisplay, currentDateDisplay) ||
                other.currentDateDisplay == currentDateDisplay) &&
            (identical(other.isHijri, isHijri) || other.isHijri == isHijri) &&
            const DeepCollectionEquality()
                .equals(other.prayerTimesData, prayerTimesData) &&
            const DeepCollectionEquality()
                .equals(other.dailyPrayers, dailyPrayers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      locationName,
      hoursLeft,
      minutesLeft,
      secondsLeft,
      nextPrayerName,
      nextPrayerTime,
      currentDateDisplay,
      isHijri,
      const DeepCollectionEquality().hash(prayerTimesData),
      const DeepCollectionEquality().hash(dailyPrayers));

  @override
  String toString() {
    return 'PrayerTimeState(isLoading: $isLoading, locationName: $locationName, hoursLeft: $hoursLeft, minutesLeft: $minutesLeft, secondsLeft: $secondsLeft, nextPrayerName: $nextPrayerName, nextPrayerTime: $nextPrayerTime, currentDateDisplay: $currentDateDisplay, isHijri: $isHijri, prayerTimesData: $prayerTimesData, dailyPrayers: $dailyPrayers)';
  }
}

/// @nodoc
abstract mixin class $PrayerTimeStateCopyWith<$Res> {
  factory $PrayerTimeStateCopyWith(
          PrayerTimeState value, $Res Function(PrayerTimeState) _then) =
      _$PrayerTimeStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      String locationName,
      String hoursLeft,
      String minutesLeft,
      String secondsLeft,
      String nextPrayerName,
      String nextPrayerTime,
      String currentDateDisplay,
      bool isHijri,
      @JsonKey(includeFromJson: false, includeToJson: false)
      dynamic prayerTimesData,
      List<Map<String, String>> dailyPrayers});
}

/// @nodoc
class _$PrayerTimeStateCopyWithImpl<$Res>
    implements $PrayerTimeStateCopyWith<$Res> {
  _$PrayerTimeStateCopyWithImpl(this._self, this._then);

  final PrayerTimeState _self;
  final $Res Function(PrayerTimeState) _then;

  /// Create a copy of PrayerTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? locationName = null,
    Object? hoursLeft = null,
    Object? minutesLeft = null,
    Object? secondsLeft = null,
    Object? nextPrayerName = null,
    Object? nextPrayerTime = null,
    Object? currentDateDisplay = null,
    Object? isHijri = null,
    Object? prayerTimesData = freezed,
    Object? dailyPrayers = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locationName: null == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      hoursLeft: null == hoursLeft
          ? _self.hoursLeft
          : hoursLeft // ignore: cast_nullable_to_non_nullable
              as String,
      minutesLeft: null == minutesLeft
          ? _self.minutesLeft
          : minutesLeft // ignore: cast_nullable_to_non_nullable
              as String,
      secondsLeft: null == secondsLeft
          ? _self.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as String,
      nextPrayerName: null == nextPrayerName
          ? _self.nextPrayerName
          : nextPrayerName // ignore: cast_nullable_to_non_nullable
              as String,
      nextPrayerTime: null == nextPrayerTime
          ? _self.nextPrayerTime
          : nextPrayerTime // ignore: cast_nullable_to_non_nullable
              as String,
      currentDateDisplay: null == currentDateDisplay
          ? _self.currentDateDisplay
          : currentDateDisplay // ignore: cast_nullable_to_non_nullable
              as String,
      isHijri: null == isHijri
          ? _self.isHijri
          : isHijri // ignore: cast_nullable_to_non_nullable
              as bool,
      prayerTimesData: freezed == prayerTimesData
          ? _self.prayerTimesData
          : prayerTimesData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dailyPrayers: null == dailyPrayers
          ? _self.dailyPrayers
          : dailyPrayers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PrayerTimeState].
extension PrayerTimeStatePatterns on PrayerTimeState {
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
    TResult Function(_PrayerTimeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PrayerTimeState() when $default != null:
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
    TResult Function(_PrayerTimeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrayerTimeState():
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
    TResult? Function(_PrayerTimeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrayerTimeState() when $default != null:
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
            String locationName,
            String hoursLeft,
            String minutesLeft,
            String secondsLeft,
            String nextPrayerName,
            String nextPrayerTime,
            String currentDateDisplay,
            bool isHijri,
            @JsonKey(includeFromJson: false, includeToJson: false)
            dynamic prayerTimesData,
            List<Map<String, String>> dailyPrayers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PrayerTimeState() when $default != null:
        return $default(
            _that.isLoading,
            _that.locationName,
            _that.hoursLeft,
            _that.minutesLeft,
            _that.secondsLeft,
            _that.nextPrayerName,
            _that.nextPrayerTime,
            _that.currentDateDisplay,
            _that.isHijri,
            _that.prayerTimesData,
            _that.dailyPrayers);
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
            String locationName,
            String hoursLeft,
            String minutesLeft,
            String secondsLeft,
            String nextPrayerName,
            String nextPrayerTime,
            String currentDateDisplay,
            bool isHijri,
            @JsonKey(includeFromJson: false, includeToJson: false)
            dynamic prayerTimesData,
            List<Map<String, String>> dailyPrayers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrayerTimeState():
        return $default(
            _that.isLoading,
            _that.locationName,
            _that.hoursLeft,
            _that.minutesLeft,
            _that.secondsLeft,
            _that.nextPrayerName,
            _that.nextPrayerTime,
            _that.currentDateDisplay,
            _that.isHijri,
            _that.prayerTimesData,
            _that.dailyPrayers);
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
            String locationName,
            String hoursLeft,
            String minutesLeft,
            String secondsLeft,
            String nextPrayerName,
            String nextPrayerTime,
            String currentDateDisplay,
            bool isHijri,
            @JsonKey(includeFromJson: false, includeToJson: false)
            dynamic prayerTimesData,
            List<Map<String, String>> dailyPrayers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrayerTimeState() when $default != null:
        return $default(
            _that.isLoading,
            _that.locationName,
            _that.hoursLeft,
            _that.minutesLeft,
            _that.secondsLeft,
            _that.nextPrayerName,
            _that.nextPrayerTime,
            _that.currentDateDisplay,
            _that.isHijri,
            _that.prayerTimesData,
            _that.dailyPrayers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PrayerTimeState implements PrayerTimeState {
  const _PrayerTimeState(
      {this.isLoading = false,
      this.locationName = '',
      this.hoursLeft = '00',
      this.minutesLeft = '00',
      this.secondsLeft = '00',
      this.nextPrayerName = '',
      this.nextPrayerTime = '',
      this.currentDateDisplay = '',
      this.isHijri = false,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.prayerTimesData,
      final List<Map<String, String>> dailyPrayers = const []})
      : _dailyPrayers = dailyPrayers;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String locationName;
  @override
  @JsonKey()
  final String hoursLeft;
  @override
  @JsonKey()
  final String minutesLeft;
  @override
  @JsonKey()
  final String secondsLeft;
  @override
  @JsonKey()
  final String nextPrayerName;
  @override
  @JsonKey()
  final String nextPrayerTime;
  @override
  @JsonKey()
  final String currentDateDisplay;
  @override
  @JsonKey()
  final bool isHijri;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final dynamic prayerTimesData;
  final List<Map<String, String>> _dailyPrayers;
  @override
  @JsonKey()
  List<Map<String, String>> get dailyPrayers {
    if (_dailyPrayers is EqualUnmodifiableListView) return _dailyPrayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyPrayers);
  }

  /// Create a copy of PrayerTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PrayerTimeStateCopyWith<_PrayerTimeState> get copyWith =>
      __$PrayerTimeStateCopyWithImpl<_PrayerTimeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrayerTimeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.hoursLeft, hoursLeft) ||
                other.hoursLeft == hoursLeft) &&
            (identical(other.minutesLeft, minutesLeft) ||
                other.minutesLeft == minutesLeft) &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft) &&
            (identical(other.nextPrayerName, nextPrayerName) ||
                other.nextPrayerName == nextPrayerName) &&
            (identical(other.nextPrayerTime, nextPrayerTime) ||
                other.nextPrayerTime == nextPrayerTime) &&
            (identical(other.currentDateDisplay, currentDateDisplay) ||
                other.currentDateDisplay == currentDateDisplay) &&
            (identical(other.isHijri, isHijri) || other.isHijri == isHijri) &&
            const DeepCollectionEquality()
                .equals(other.prayerTimesData, prayerTimesData) &&
            const DeepCollectionEquality()
                .equals(other._dailyPrayers, _dailyPrayers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      locationName,
      hoursLeft,
      minutesLeft,
      secondsLeft,
      nextPrayerName,
      nextPrayerTime,
      currentDateDisplay,
      isHijri,
      const DeepCollectionEquality().hash(prayerTimesData),
      const DeepCollectionEquality().hash(_dailyPrayers));

  @override
  String toString() {
    return 'PrayerTimeState(isLoading: $isLoading, locationName: $locationName, hoursLeft: $hoursLeft, minutesLeft: $minutesLeft, secondsLeft: $secondsLeft, nextPrayerName: $nextPrayerName, nextPrayerTime: $nextPrayerTime, currentDateDisplay: $currentDateDisplay, isHijri: $isHijri, prayerTimesData: $prayerTimesData, dailyPrayers: $dailyPrayers)';
  }
}

/// @nodoc
abstract mixin class _$PrayerTimeStateCopyWith<$Res>
    implements $PrayerTimeStateCopyWith<$Res> {
  factory _$PrayerTimeStateCopyWith(
          _PrayerTimeState value, $Res Function(_PrayerTimeState) _then) =
      __$PrayerTimeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String locationName,
      String hoursLeft,
      String minutesLeft,
      String secondsLeft,
      String nextPrayerName,
      String nextPrayerTime,
      String currentDateDisplay,
      bool isHijri,
      @JsonKey(includeFromJson: false, includeToJson: false)
      dynamic prayerTimesData,
      List<Map<String, String>> dailyPrayers});
}

/// @nodoc
class __$PrayerTimeStateCopyWithImpl<$Res>
    implements _$PrayerTimeStateCopyWith<$Res> {
  __$PrayerTimeStateCopyWithImpl(this._self, this._then);

  final _PrayerTimeState _self;
  final $Res Function(_PrayerTimeState) _then;

  /// Create a copy of PrayerTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? locationName = null,
    Object? hoursLeft = null,
    Object? minutesLeft = null,
    Object? secondsLeft = null,
    Object? nextPrayerName = null,
    Object? nextPrayerTime = null,
    Object? currentDateDisplay = null,
    Object? isHijri = null,
    Object? prayerTimesData = freezed,
    Object? dailyPrayers = null,
  }) {
    return _then(_PrayerTimeState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locationName: null == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      hoursLeft: null == hoursLeft
          ? _self.hoursLeft
          : hoursLeft // ignore: cast_nullable_to_non_nullable
              as String,
      minutesLeft: null == minutesLeft
          ? _self.minutesLeft
          : minutesLeft // ignore: cast_nullable_to_non_nullable
              as String,
      secondsLeft: null == secondsLeft
          ? _self.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as String,
      nextPrayerName: null == nextPrayerName
          ? _self.nextPrayerName
          : nextPrayerName // ignore: cast_nullable_to_non_nullable
              as String,
      nextPrayerTime: null == nextPrayerTime
          ? _self.nextPrayerTime
          : nextPrayerTime // ignore: cast_nullable_to_non_nullable
              as String,
      currentDateDisplay: null == currentDateDisplay
          ? _self.currentDateDisplay
          : currentDateDisplay // ignore: cast_nullable_to_non_nullable
              as String,
      isHijri: null == isHijri
          ? _self.isHijri
          : isHijri // ignore: cast_nullable_to_non_nullable
              as bool,
      prayerTimesData: freezed == prayerTimesData
          ? _self.prayerTimesData
          : prayerTimesData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dailyPrayers: null == dailyPrayers
          ? _self._dailyPrayers
          : dailyPrayers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

// dart format on
