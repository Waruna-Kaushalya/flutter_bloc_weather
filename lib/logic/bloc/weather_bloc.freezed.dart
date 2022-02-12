// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) {
  return _WeatherState.fromJson(json);
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherState call(
      {WeatherStateStatus stateStatus = WeatherStateStatus.initial,
      double? temperature,
      required String cityName,
      bool isTemperatureUnitsState = false,
      TemperatureUnits temperatureUnits = TemperatureUnits.kelvin,
      List<bool> selections = const [true, false],
      String? errorMsg}) {
    return _WeatherState(
      stateStatus: stateStatus,
      temperature: temperature,
      cityName: cityName,
      isTemperatureUnitsState: isTemperatureUnitsState,
      temperatureUnits: temperatureUnits,
      selections: selections,
      errorMsg: errorMsg,
    );
  }

  WeatherState fromJson(Map<String, Object?> json) {
    return WeatherState.fromJson(json);
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  WeatherStateStatus get stateStatus => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  bool get isTemperatureUnitsState => throw _privateConstructorUsedError;
  TemperatureUnits get temperatureUnits => throw _privateConstructorUsedError;
  List<bool> get selections => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {WeatherStateStatus stateStatus,
      double? temperature,
      String cityName,
      bool isTemperatureUnitsState,
      TemperatureUnits temperatureUnits,
      List<bool> selections,
      String? errorMsg});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? stateStatus = freezed,
    Object? temperature = freezed,
    Object? cityName = freezed,
    Object? isTemperatureUnitsState = freezed,
    Object? temperatureUnits = freezed,
    Object? selections = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: stateStatus == freezed
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as WeatherStateStatus,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      isTemperatureUnitsState: isTemperatureUnitsState == freezed
          ? _value.isTemperatureUnitsState
          : isTemperatureUnitsState // ignore: cast_nullable_to_non_nullable
              as bool,
      temperatureUnits: temperatureUnits == freezed
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      selections: selections == freezed
          ? _value.selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {WeatherStateStatus stateStatus,
      double? temperature,
      String cityName,
      bool isTemperatureUnitsState,
      TemperatureUnits temperatureUnits,
      List<bool> selections,
      String? errorMsg});
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;

  @override
  $Res call({
    Object? stateStatus = freezed,
    Object? temperature = freezed,
    Object? cityName = freezed,
    Object? isTemperatureUnitsState = freezed,
    Object? temperatureUnits = freezed,
    Object? selections = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_WeatherState(
      stateStatus: stateStatus == freezed
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as WeatherStateStatus,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      isTemperatureUnitsState: isTemperatureUnitsState == freezed
          ? _value.isTemperatureUnitsState
          : isTemperatureUnitsState // ignore: cast_nullable_to_non_nullable
              as bool,
      temperatureUnits: temperatureUnits == freezed
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      selections: selections == freezed
          ? _value.selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherState implements _WeatherState {
  _$_WeatherState(
      {this.stateStatus = WeatherStateStatus.initial,
      this.temperature,
      required this.cityName,
      this.isTemperatureUnitsState = false,
      this.temperatureUnits = TemperatureUnits.kelvin,
      this.selections = const [true, false],
      this.errorMsg});

  factory _$_WeatherState.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateFromJson(json);

  @JsonKey()
  @override
  final WeatherStateStatus stateStatus;
  @override
  final double? temperature;
  @override
  final String cityName;
  @JsonKey()
  @override
  final bool isTemperatureUnitsState;
  @JsonKey()
  @override
  final TemperatureUnits temperatureUnits;
  @JsonKey()
  @override
  final List<bool> selections;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'WeatherState(stateStatus: $stateStatus, temperature: $temperature, cityName: $cityName, isTemperatureUnitsState: $isTemperatureUnitsState, temperatureUnits: $temperatureUnits, selections: $selections, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherState &&
            const DeepCollectionEquality()
                .equals(other.stateStatus, stateStatus) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality().equals(
                other.isTemperatureUnitsState, isTemperatureUnitsState) &&
            const DeepCollectionEquality()
                .equals(other.temperatureUnits, temperatureUnits) &&
            const DeepCollectionEquality()
                .equals(other.selections, selections) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateStatus),
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(isTemperatureUnitsState),
      const DeepCollectionEquality().hash(temperatureUnits),
      const DeepCollectionEquality().hash(selections),
      const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateToJson(this);
  }
}

abstract class _WeatherState implements WeatherState {
  factory _WeatherState(
      {WeatherStateStatus stateStatus,
      double? temperature,
      required String cityName,
      bool isTemperatureUnitsState,
      TemperatureUnits temperatureUnits,
      List<bool> selections,
      String? errorMsg}) = _$_WeatherState;

  factory _WeatherState.fromJson(Map<String, dynamic> json) =
      _$_WeatherState.fromJson;

  @override
  WeatherStateStatus get stateStatus;
  @override
  double? get temperature;
  @override
  String get cityName;
  @override
  bool get isTemperatureUnitsState;
  @override
  TemperatureUnits get temperatureUnits;
  @override
  List<bool> get selections;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
