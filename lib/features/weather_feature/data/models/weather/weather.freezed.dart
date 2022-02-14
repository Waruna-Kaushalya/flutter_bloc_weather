// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

  _Weather call(
      {@JsonKey(name: 'name') required String cityname,
      @JsonKey(name: 'main') required Main temperature,
      Failure? failure}) {
    return _Weather(
      cityname: cityname,
      temperature: temperature,
      failure: failure,
    );
  }

  Weather fromJson(Map<String, Object?> json) {
    return Weather.fromJson(json);
  }
}

/// @nodoc
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  @JsonKey(name: 'name')
  String get cityname => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  Main get temperature => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String cityname,
      @JsonKey(name: 'main') Main temperature,
      Failure? failure});

  $MainCopyWith<$Res> get temperature;
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? cityname = freezed,
    Object? temperature = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      cityname: cityname == freezed
          ? _value.cityname
          : cityname // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Main,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  $MainCopyWith<$Res> get temperature {
    return $MainCopyWith<$Res>(_value.temperature, (value) {
      return _then(_value.copyWith(temperature: value));
    });
  }

  @override
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String cityname,
      @JsonKey(name: 'main') Main temperature,
      Failure? failure});

  @override
  $MainCopyWith<$Res> get temperature;
  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object? cityname = freezed,
    Object? temperature = freezed,
    Object? failure = freezed,
  }) {
    return _then(_Weather(
      cityname: cityname == freezed
          ? _value.cityname
          : cityname // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Main,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Weather implements _Weather {
  _$_Weather(
      {@JsonKey(name: 'name') required this.cityname,
      @JsonKey(name: 'main') required this.temperature,
      this.failure});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String cityname;
  @override
  @JsonKey(name: 'main')
  final Main temperature;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'Weather(cityname: $cityname, temperature: $temperature, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weather &&
            const DeepCollectionEquality().equals(other.cityname, cityname) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cityname),
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(this);
  }
}

abstract class _Weather implements Weather {
  factory _Weather(
      {@JsonKey(name: 'name') required String cityname,
      @JsonKey(name: 'main') required Main temperature,
      Failure? failure}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  @JsonKey(name: 'name')
  String get cityname;
  @override
  @JsonKey(name: 'main')
  Main get temperature;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
class _$MainTearOff {
  const _$MainTearOff();

  _Main call({@JsonKey(name: 'temp') required double temperature}) {
    return _Main(
      temperature: temperature,
    );
  }

  Main fromJson(Map<String, Object?> json) {
    return Main.fromJson(json);
  }
}

/// @nodoc
const $Main = _$MainTearOff();

/// @nodoc
mixin _$Main {
  @JsonKey(name: 'temp')
  double get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCopyWith<Main> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'temp') double temperature});
}

/// @nodoc
class _$MainCopyWithImpl<$Res> implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  final Main _value;
  // ignore: unused_field
  final $Res Function(Main) _then;

  @override
  $Res call({
    Object? temperature = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MainCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$MainCopyWith(_Main value, $Res Function(_Main) then) =
      __$MainCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'temp') double temperature});
}

/// @nodoc
class __$MainCopyWithImpl<$Res> extends _$MainCopyWithImpl<$Res>
    implements _$MainCopyWith<$Res> {
  __$MainCopyWithImpl(_Main _value, $Res Function(_Main) _then)
      : super(_value, (v) => _then(v as _Main));

  @override
  _Main get _value => super._value as _Main;

  @override
  $Res call({
    Object? temperature = freezed,
  }) {
    return _then(_Main(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Main implements _Main {
  _$_Main({@JsonKey(name: 'temp') required this.temperature});

  factory _$_Main.fromJson(Map<String, dynamic> json) => _$$_MainFromJson(json);

  @override
  @JsonKey(name: 'temp')
  final double temperature;

  @override
  String toString() {
    return 'Main(temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Main &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(temperature));

  @JsonKey(ignore: true)
  @override
  _$MainCopyWith<_Main> get copyWith =>
      __$MainCopyWithImpl<_Main>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainToJson(this);
  }
}

abstract class _Main implements Main {
  factory _Main({@JsonKey(name: 'temp') required double temperature}) = _$_Main;

  factory _Main.fromJson(Map<String, dynamic> json) = _$_Main.fromJson;

  @override
  @JsonKey(name: 'temp')
  double get temperature;
  @override
  @JsonKey(ignore: true)
  _$MainCopyWith<_Main> get copyWith => throw _privateConstructorUsedError;
}
