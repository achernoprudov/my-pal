// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'record_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecordDto _$RecordDtoFromJson(Map<String, dynamic> json) {
  return _RecordDto.fromJson(json);
}

/// @nodoc
class _$RecordDtoTearOff {
  const _$RecordDtoTearOff();

  _RecordDto call(
      {int? id, required int date, required String mood, String text = ''}) {
    return _RecordDto(
      id: id,
      date: date,
      mood: mood,
      text: text,
    );
  }

  RecordDto fromJson(Map<String, Object?> json) {
    return RecordDto.fromJson(json);
  }
}

/// @nodoc
const $RecordDto = _$RecordDtoTearOff();

/// @nodoc
mixin _$RecordDto {
  int? get id => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  String get mood => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordDtoCopyWith<RecordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordDtoCopyWith<$Res> {
  factory $RecordDtoCopyWith(RecordDto value, $Res Function(RecordDto) then) =
      _$RecordDtoCopyWithImpl<$Res>;
  $Res call({int? id, int date, String mood, String text});
}

/// @nodoc
class _$RecordDtoCopyWithImpl<$Res> implements $RecordDtoCopyWith<$Res> {
  _$RecordDtoCopyWithImpl(this._value, this._then);

  final RecordDto _value;
  // ignore: unused_field
  final $Res Function(RecordDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? mood = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      mood: mood == freezed
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RecordDtoCopyWith<$Res> implements $RecordDtoCopyWith<$Res> {
  factory _$RecordDtoCopyWith(
          _RecordDto value, $Res Function(_RecordDto) then) =
      __$RecordDtoCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int date, String mood, String text});
}

/// @nodoc
class __$RecordDtoCopyWithImpl<$Res> extends _$RecordDtoCopyWithImpl<$Res>
    implements _$RecordDtoCopyWith<$Res> {
  __$RecordDtoCopyWithImpl(_RecordDto _value, $Res Function(_RecordDto) _then)
      : super(_value, (v) => _then(v as _RecordDto));

  @override
  _RecordDto get _value => super._value as _RecordDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? mood = freezed,
    Object? text = freezed,
  }) {
    return _then(_RecordDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      mood: mood == freezed
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecordDto implements _RecordDto {
  const _$_RecordDto(
      {this.id, required this.date, required this.mood, this.text = ''});

  factory _$_RecordDto.fromJson(Map<String, dynamic> json) =>
      _$$_RecordDtoFromJson(json);

  @override
  final int? id;
  @override
  final int date;
  @override
  final String mood;
  @JsonKey()
  @override
  final String text;

  @override
  String toString() {
    return 'RecordDto(id: $id, date: $date, mood: $mood, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecordDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.mood, mood) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(mood),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$RecordDtoCopyWith<_RecordDto> get copyWith =>
      __$RecordDtoCopyWithImpl<_RecordDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordDtoToJson(this);
  }
}

abstract class _RecordDto implements RecordDto {
  const factory _RecordDto(
      {int? id,
      required int date,
      required String mood,
      String text}) = _$_RecordDto;

  factory _RecordDto.fromJson(Map<String, dynamic> json) =
      _$_RecordDto.fromJson;

  @override
  int? get id;
  @override
  int get date;
  @override
  String get mood;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$RecordDtoCopyWith<_RecordDto> get copyWith =>
      throw _privateConstructorUsedError;
}
