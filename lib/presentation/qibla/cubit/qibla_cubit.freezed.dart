// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qibla_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QiblaState {
  QiblaStatus get status;
  double get qiblaDirection;
  double get compassHeading;
  String get locationName;
  String? get errorMessage;

  /// Create a copy of QiblaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QiblaStateCopyWith<QiblaState> get copyWith =>
      _$QiblaStateCopyWithImpl<QiblaState>(this as QiblaState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QiblaState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.qiblaDirection, qiblaDirection) ||
                other.qiblaDirection == qiblaDirection) &&
            (identical(other.compassHeading, compassHeading) ||
                other.compassHeading == compassHeading) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, qiblaDirection,
      compassHeading, locationName, errorMessage);

  @override
  String toString() {
    return 'QiblaState(status: $status, qiblaDirection: $qiblaDirection, compassHeading: $compassHeading, locationName: $locationName, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $QiblaStateCopyWith<$Res> {
  factory $QiblaStateCopyWith(
          QiblaState value, $Res Function(QiblaState) _then) =
      _$QiblaStateCopyWithImpl;
  @useResult
  $Res call(
      {QiblaStatus status,
      double qiblaDirection,
      double compassHeading,
      String locationName,
      String? errorMessage});
}

/// @nodoc
class _$QiblaStateCopyWithImpl<$Res> implements $QiblaStateCopyWith<$Res> {
  _$QiblaStateCopyWithImpl(this._self, this._then);

  final QiblaState _self;
  final $Res Function(QiblaState) _then;

  /// Create a copy of QiblaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? qiblaDirection = null,
    Object? compassHeading = null,
    Object? locationName = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as QiblaStatus,
      qiblaDirection: null == qiblaDirection
          ? _self.qiblaDirection
          : qiblaDirection // ignore: cast_nullable_to_non_nullable
              as double,
      compassHeading: null == compassHeading
          ? _self.compassHeading
          : compassHeading // ignore: cast_nullable_to_non_nullable
              as double,
      locationName: null == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [QiblaState].
extension QiblaStatePatterns on QiblaState {
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
    TResult Function(_QiblaState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QiblaState() when $default != null:
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
    TResult Function(_QiblaState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QiblaState():
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
    TResult? Function(_QiblaState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QiblaState() when $default != null:
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
    TResult Function(QiblaStatus status, double qiblaDirection,
            double compassHeading, String locationName, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QiblaState() when $default != null:
        return $default(_that.status, _that.qiblaDirection,
            _that.compassHeading, _that.locationName, _that.errorMessage);
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
    TResult Function(QiblaStatus status, double qiblaDirection,
            double compassHeading, String locationName, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QiblaState():
        return $default(_that.status, _that.qiblaDirection,
            _that.compassHeading, _that.locationName, _that.errorMessage);
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
    TResult? Function(QiblaStatus status, double qiblaDirection,
            double compassHeading, String locationName, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QiblaState() when $default != null:
        return $default(_that.status, _that.qiblaDirection,
            _that.compassHeading, _that.locationName, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _QiblaState implements QiblaState {
  const _QiblaState(
      {this.status = QiblaStatus.loading,
      this.qiblaDirection = 0.0,
      this.compassHeading = 0.0,
      this.locationName = "",
      this.errorMessage});

  @override
  @JsonKey()
  final QiblaStatus status;
  @override
  @JsonKey()
  final double qiblaDirection;
  @override
  @JsonKey()
  final double compassHeading;
  @override
  @JsonKey()
  final String locationName;
  @override
  final String? errorMessage;

  /// Create a copy of QiblaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QiblaStateCopyWith<_QiblaState> get copyWith =>
      __$QiblaStateCopyWithImpl<_QiblaState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QiblaState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.qiblaDirection, qiblaDirection) ||
                other.qiblaDirection == qiblaDirection) &&
            (identical(other.compassHeading, compassHeading) ||
                other.compassHeading == compassHeading) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, qiblaDirection,
      compassHeading, locationName, errorMessage);

  @override
  String toString() {
    return 'QiblaState(status: $status, qiblaDirection: $qiblaDirection, compassHeading: $compassHeading, locationName: $locationName, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$QiblaStateCopyWith<$Res>
    implements $QiblaStateCopyWith<$Res> {
  factory _$QiblaStateCopyWith(
          _QiblaState value, $Res Function(_QiblaState) _then) =
      __$QiblaStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {QiblaStatus status,
      double qiblaDirection,
      double compassHeading,
      String locationName,
      String? errorMessage});
}

/// @nodoc
class __$QiblaStateCopyWithImpl<$Res> implements _$QiblaStateCopyWith<$Res> {
  __$QiblaStateCopyWithImpl(this._self, this._then);

  final _QiblaState _self;
  final $Res Function(_QiblaState) _then;

  /// Create a copy of QiblaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? qiblaDirection = null,
    Object? compassHeading = null,
    Object? locationName = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_QiblaState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as QiblaStatus,
      qiblaDirection: null == qiblaDirection
          ? _self.qiblaDirection
          : qiblaDirection // ignore: cast_nullable_to_non_nullable
              as double,
      compassHeading: null == compassHeading
          ? _self.compassHeading
          : compassHeading // ignore: cast_nullable_to_non_nullable
              as double,
      locationName: null == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
