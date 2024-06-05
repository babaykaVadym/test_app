// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppModel _$AppModelFromJson(Map<String, dynamic> json) {
  return _AppModel.fromJson(json);
}

/// @nodoc
mixin _$AppModel {
  String? get id => throw _privateConstructorUsedError;
  List<String>? get field => throw _privateConstructorUsedError;
  End? get start => throw _privateConstructorUsedError;
  End? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppModelCopyWith<AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModelCopyWith<$Res> {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) then) =
      _$AppModelCopyWithImpl<$Res, AppModel>;
  @useResult
  $Res call({String? id, List<String>? field, End? start, End? end});

  $EndCopyWith<$Res>? get start;
  $EndCopyWith<$Res>? get end;
}

/// @nodoc
class _$AppModelCopyWithImpl<$Res, $Val extends AppModel>
    implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? field = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as End?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as End?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EndCopyWith<$Res>? get start {
    if (_value.start == null) {
      return null;
    }

    return $EndCopyWith<$Res>(_value.start!, (value) {
      return _then(_value.copyWith(start: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EndCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $EndCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppModelImplCopyWith<$Res>
    implements $AppModelCopyWith<$Res> {
  factory _$$AppModelImplCopyWith(
          _$AppModelImpl value, $Res Function(_$AppModelImpl) then) =
      __$$AppModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, List<String>? field, End? start, End? end});

  @override
  $EndCopyWith<$Res>? get start;
  @override
  $EndCopyWith<$Res>? get end;
}

/// @nodoc
class __$$AppModelImplCopyWithImpl<$Res>
    extends _$AppModelCopyWithImpl<$Res, _$AppModelImpl>
    implements _$$AppModelImplCopyWith<$Res> {
  __$$AppModelImplCopyWithImpl(
      _$AppModelImpl _value, $Res Function(_$AppModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? field = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$AppModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      field: freezed == field
          ? _value._field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as End?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as End?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppModelImpl implements _AppModel {
  const _$AppModelImpl(
      {this.id, final List<String>? field, this.start, this.end})
      : _field = field;

  factory _$AppModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppModelImplFromJson(json);

  @override
  final String? id;
  final List<String>? _field;
  @override
  List<String>? get field {
    final value = _field;
    if (value == null) return null;
    if (_field is EqualUnmodifiableListView) return _field;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final End? start;
  @override
  final End? end;

  @override
  String toString() {
    return 'AppModel(id: $id, field: $field, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._field, _field) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_field), start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      __$$AppModelImplCopyWithImpl<_$AppModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppModelImplToJson(
      this,
    );
  }
}

abstract class _AppModel implements AppModel {
  const factory _AppModel(
      {final String? id,
      final List<String>? field,
      final End? start,
      final End? end}) = _$AppModelImpl;

  factory _AppModel.fromJson(Map<String, dynamic> json) =
      _$AppModelImpl.fromJson;

  @override
  String? get id;
  @override
  List<String>? get field;
  @override
  End? get start;
  @override
  End? get end;
  @override
  @JsonKey(ignore: true)
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

End _$EndFromJson(Map<String, dynamic> json) {
  return _End.fromJson(json);
}

/// @nodoc
mixin _$End {
  int? get x => throw _privateConstructorUsedError;
  int? get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndCopyWith<End> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndCopyWith<$Res> {
  factory $EndCopyWith(End value, $Res Function(End) then) =
      _$EndCopyWithImpl<$Res, End>;
  @useResult
  $Res call({int? x, int? y});
}

/// @nodoc
class _$EndCopyWithImpl<$Res, $Val extends End> implements $EndCopyWith<$Res> {
  _$EndCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EndImplCopyWith<$Res> implements $EndCopyWith<$Res> {
  factory _$$EndImplCopyWith(_$EndImpl value, $Res Function(_$EndImpl) then) =
      __$$EndImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? x, int? y});
}

/// @nodoc
class __$$EndImplCopyWithImpl<$Res> extends _$EndCopyWithImpl<$Res, _$EndImpl>
    implements _$$EndImplCopyWith<$Res> {
  __$$EndImplCopyWithImpl(_$EndImpl _value, $Res Function(_$EndImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$EndImpl(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndImpl implements _End {
  const _$EndImpl({this.x, this.y});

  factory _$EndImpl.fromJson(Map<String, dynamic> json) =>
      _$$EndImplFromJson(json);

  @override
  final int? x;
  @override
  final int? y;

  @override
  String toString() {
    return 'End(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndImplCopyWith<_$EndImpl> get copyWith =>
      __$$EndImplCopyWithImpl<_$EndImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EndImplToJson(
      this,
    );
  }
}

abstract class _End implements End {
  const factory _End({final int? x, final int? y}) = _$EndImpl;

  factory _End.fromJson(Map<String, dynamic> json) = _$EndImpl.fromJson;

  @override
  int? get x;
  @override
  int? get y;
  @override
  @JsonKey(ignore: true)
  _$$EndImplCopyWith<_$EndImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PointMode {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  double get g => throw _privateConstructorUsedError;
  double get h => throw _privateConstructorUsedError;
  PointMode? get befoModel => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PointModeCopyWith<PointMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointModeCopyWith<$Res> {
  factory $PointModeCopyWith(PointMode value, $Res Function(PointMode) then) =
      _$PointModeCopyWithImpl<$Res, PointMode>;
  @useResult
  $Res call(
      {int x, int y, double g, double h, PointMode? befoModel, bool isBlocked});

  $PointModeCopyWith<$Res>? get befoModel;
}

/// @nodoc
class _$PointModeCopyWithImpl<$Res, $Val extends PointMode>
    implements $PointModeCopyWith<$Res> {
  _$PointModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? g = null,
    Object? h = null,
    Object? befoModel = freezed,
    Object? isBlocked = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      g: null == g
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as double,
      h: null == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as double,
      befoModel: freezed == befoModel
          ? _value.befoModel
          : befoModel // ignore: cast_nullable_to_non_nullable
              as PointMode?,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PointModeCopyWith<$Res>? get befoModel {
    if (_value.befoModel == null) {
      return null;
    }

    return $PointModeCopyWith<$Res>(_value.befoModel!, (value) {
      return _then(_value.copyWith(befoModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PointModeImplCopyWith<$Res>
    implements $PointModeCopyWith<$Res> {
  factory _$$PointModeImplCopyWith(
          _$PointModeImpl value, $Res Function(_$PointModeImpl) then) =
      __$$PointModeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int x, int y, double g, double h, PointMode? befoModel, bool isBlocked});

  @override
  $PointModeCopyWith<$Res>? get befoModel;
}

/// @nodoc
class __$$PointModeImplCopyWithImpl<$Res>
    extends _$PointModeCopyWithImpl<$Res, _$PointModeImpl>
    implements _$$PointModeImplCopyWith<$Res> {
  __$$PointModeImplCopyWithImpl(
      _$PointModeImpl _value, $Res Function(_$PointModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? g = null,
    Object? h = null,
    Object? befoModel = freezed,
    Object? isBlocked = null,
  }) {
    return _then(_$PointModeImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      g: null == g
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as double,
      h: null == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as double,
      befoModel: freezed == befoModel
          ? _value.befoModel
          : befoModel // ignore: cast_nullable_to_non_nullable
              as PointMode?,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PointModeImpl implements _PointMode {
  const _$PointModeImpl(
      {required this.x,
      required this.y,
      this.g = double.infinity,
      this.h = double.infinity,
      this.befoModel,
      required this.isBlocked});

  @override
  final int x;
  @override
  final int y;
  @override
  @JsonKey()
  final double g;
  @override
  @JsonKey()
  final double h;
  @override
  final PointMode? befoModel;
  @override
  final bool isBlocked;

  @override
  String toString() {
    return 'PointMode(x: $x, y: $y, g: $g, h: $h, befoModel: $befoModel, isBlocked: $isBlocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointModeImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.g, g) || other.g == g) &&
            (identical(other.h, h) || other.h == h) &&
            (identical(other.befoModel, befoModel) ||
                other.befoModel == befoModel) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, x, y, g, h, befoModel, isBlocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointModeImplCopyWith<_$PointModeImpl> get copyWith =>
      __$$PointModeImplCopyWithImpl<_$PointModeImpl>(this, _$identity);
}

abstract class _PointMode implements PointMode {
  const factory _PointMode(
      {required final int x,
      required final int y,
      final double g,
      final double h,
      final PointMode? befoModel,
      required final bool isBlocked}) = _$PointModeImpl;

  @override
  int get x;
  @override
  int get y;
  @override
  double get g;
  @override
  double get h;
  @override
  PointMode? get befoModel;
  @override
  bool get isBlocked;
  @override
  @JsonKey(ignore: true)
  _$$PointModeImplCopyWith<_$PointModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  String? get id => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call({String? id, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultModelImplCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$ResultModelImplCopyWith(
          _$ResultModelImpl value, $Res Function(_$ResultModelImpl) then) =
      __$$ResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ResultModelImplCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$ResultModelImpl>
    implements _$$ResultModelImplCopyWith<$Res> {
  __$$ResultModelImplCopyWithImpl(
      _$ResultModelImpl _value, $Res Function(_$ResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ResultModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultModelImpl implements _ResultModel {
  const _$ResultModelImpl({this.id, this.result});

  factory _$ResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultModelImplFromJson(json);

  @override
  final String? id;
  @override
  final Result? result;

  @override
  String toString() {
    return 'ResultModel(id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      __$$ResultModelImplCopyWithImpl<_$ResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultModelImplToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  const factory _ResultModel({final String? id, final Result? result}) =
      _$ResultModelImpl;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$ResultModelImpl.fromJson;

  @override
  String? get id;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<Step>? get steps => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({List<Step>? steps, String? path});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Step>? steps, String? path});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = freezed,
    Object? path = freezed,
  }) {
    return _then(_$ResultImpl(
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({final List<Step>? steps, this.path}) : _steps = steps;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  final List<Step>? _steps;
  @override
  List<Step>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? path;

  @override
  String toString() {
    return 'Result(steps: $steps, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_steps), path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result({final List<Step>? steps, final String? path}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  List<Step>? get steps;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Step _$StepFromJson(Map<String, dynamic> json) {
  return _Step.fromJson(json);
}

/// @nodoc
mixin _$Step {
  String? get x => throw _privateConstructorUsedError;
  String? get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepCopyWith<Step> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepCopyWith<$Res> {
  factory $StepCopyWith(Step value, $Res Function(Step) then) =
      _$StepCopyWithImpl<$Res, Step>;
  @useResult
  $Res call({String? x, String? y});
}

/// @nodoc
class _$StepCopyWithImpl<$Res, $Val extends Step>
    implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepImplCopyWith<$Res> implements $StepCopyWith<$Res> {
  factory _$$StepImplCopyWith(
          _$StepImpl value, $Res Function(_$StepImpl) then) =
      __$$StepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? x, String? y});
}

/// @nodoc
class __$$StepImplCopyWithImpl<$Res>
    extends _$StepCopyWithImpl<$Res, _$StepImpl>
    implements _$$StepImplCopyWith<$Res> {
  __$$StepImplCopyWithImpl(_$StepImpl _value, $Res Function(_$StepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$StepImpl(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepImpl implements _Step {
  const _$StepImpl({this.x, this.y});

  factory _$StepImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepImplFromJson(json);

  @override
  final String? x;
  @override
  final String? y;

  @override
  String toString() {
    return 'Step(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      __$$StepImplCopyWithImpl<_$StepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepImplToJson(
      this,
    );
  }
}

abstract class _Step implements Step {
  const factory _Step({final String? x, final String? y}) = _$StepImpl;

  factory _Step.fromJson(Map<String, dynamic> json) = _$StepImpl.fromJson;

  @override
  String? get x;
  @override
  String? get y;
  @override
  @JsonKey(ignore: true)
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchModel {
  List<List<PointMode>> get listOfAppPointModel =>
      throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get rows => throw _privateConstructorUsedError;
  PointMode get startPoint => throw _privateConstructorUsedError;
  PointMode get endPoint => throw _privateConstructorUsedError;
  List<PointMode>? get resultList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res, SearchModel>;
  @useResult
  $Res call(
      {List<List<PointMode>> listOfAppPointModel,
      int column,
      String id,
      int rows,
      PointMode startPoint,
      PointMode endPoint,
      List<PointMode>? resultList});

  $PointModeCopyWith<$Res> get startPoint;
  $PointModeCopyWith<$Res> get endPoint;
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res, $Val extends SearchModel>
    implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfAppPointModel = null,
    Object? column = null,
    Object? id = null,
    Object? rows = null,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? resultList = freezed,
  }) {
    return _then(_value.copyWith(
      listOfAppPointModel: null == listOfAppPointModel
          ? _value.listOfAppPointModel
          : listOfAppPointModel // ignore: cast_nullable_to_non_nullable
              as List<List<PointMode>>,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as PointMode,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as PointMode,
      resultList: freezed == resultList
          ? _value.resultList
          : resultList // ignore: cast_nullable_to_non_nullable
              as List<PointMode>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PointModeCopyWith<$Res> get startPoint {
    return $PointModeCopyWith<$Res>(_value.startPoint, (value) {
      return _then(_value.copyWith(startPoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PointModeCopyWith<$Res> get endPoint {
    return $PointModeCopyWith<$Res>(_value.endPoint, (value) {
      return _then(_value.copyWith(endPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchModelImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelImplCopyWith(
          _$SearchModelImpl value, $Res Function(_$SearchModelImpl) then) =
      __$$SearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<PointMode>> listOfAppPointModel,
      int column,
      String id,
      int rows,
      PointMode startPoint,
      PointMode endPoint,
      List<PointMode>? resultList});

  @override
  $PointModeCopyWith<$Res> get startPoint;
  @override
  $PointModeCopyWith<$Res> get endPoint;
}

/// @nodoc
class __$$SearchModelImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelImpl>
    implements _$$SearchModelImplCopyWith<$Res> {
  __$$SearchModelImplCopyWithImpl(
      _$SearchModelImpl _value, $Res Function(_$SearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfAppPointModel = null,
    Object? column = null,
    Object? id = null,
    Object? rows = null,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? resultList = freezed,
  }) {
    return _then(_$SearchModelImpl(
      listOfAppPointModel: null == listOfAppPointModel
          ? _value._listOfAppPointModel
          : listOfAppPointModel // ignore: cast_nullable_to_non_nullable
              as List<List<PointMode>>,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as PointMode,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as PointMode,
      resultList: freezed == resultList
          ? _value._resultList
          : resultList // ignore: cast_nullable_to_non_nullable
              as List<PointMode>?,
    ));
  }
}

/// @nodoc

class _$SearchModelImpl implements _SearchModel {
  const _$SearchModelImpl(
      {required final List<List<PointMode>> listOfAppPointModel,
      required this.column,
      required this.id,
      required this.rows,
      required this.startPoint,
      required this.endPoint,
      final List<PointMode>? resultList})
      : _listOfAppPointModel = listOfAppPointModel,
        _resultList = resultList;

  final List<List<PointMode>> _listOfAppPointModel;
  @override
  List<List<PointMode>> get listOfAppPointModel {
    if (_listOfAppPointModel is EqualUnmodifiableListView)
      return _listOfAppPointModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfAppPointModel);
  }

  @override
  final int column;
  @override
  final String id;
  @override
  final int rows;
  @override
  final PointMode startPoint;
  @override
  final PointMode endPoint;
  final List<PointMode>? _resultList;
  @override
  List<PointMode>? get resultList {
    final value = _resultList;
    if (value == null) return null;
    if (_resultList is EqualUnmodifiableListView) return _resultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchModel(listOfAppPointModel: $listOfAppPointModel, column: $column, id: $id, rows: $rows, startPoint: $startPoint, endPoint: $endPoint, resultList: $resultList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelImpl &&
            const DeepCollectionEquality()
                .equals(other._listOfAppPointModel, _listOfAppPointModel) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rows, rows) || other.rows == rows) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.endPoint, endPoint) ||
                other.endPoint == endPoint) &&
            const DeepCollectionEquality()
                .equals(other._resultList, _resultList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listOfAppPointModel),
      column,
      id,
      rows,
      startPoint,
      endPoint,
      const DeepCollectionEquality().hash(_resultList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      __$$SearchModelImplCopyWithImpl<_$SearchModelImpl>(this, _$identity);
}

abstract class _SearchModel implements SearchModel {
  const factory _SearchModel(
      {required final List<List<PointMode>> listOfAppPointModel,
      required final int column,
      required final String id,
      required final int rows,
      required final PointMode startPoint,
      required final PointMode endPoint,
      final List<PointMode>? resultList}) = _$SearchModelImpl;

  @override
  List<List<PointMode>> get listOfAppPointModel;
  @override
  int get column;
  @override
  String get id;
  @override
  int get rows;
  @override
  PointMode get startPoint;
  @override
  PointMode get endPoint;
  @override
  List<PointMode>? get resultList;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
