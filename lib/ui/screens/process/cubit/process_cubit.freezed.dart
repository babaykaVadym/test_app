// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProcessState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<SearchModel> get listResult => throw _privateConstructorUsedError;
  int get loadPercent => throw _privateConstructorUsedError;
  String get errorMassage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<SearchModel> listResult,
            int loadPercent, String errorMassage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<SearchModel> listResult,
            int loadPercent, String errorMassage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<SearchModel> listResult,
            int loadPercent, String errorMassage)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProcessStateCopyWith<ProcessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessStateCopyWith<$Res> {
  factory $ProcessStateCopyWith(
          ProcessState value, $Res Function(ProcessState) then) =
      _$ProcessStateCopyWithImpl<$Res, ProcessState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<SearchModel> listResult,
      int loadPercent,
      String errorMassage});
}

/// @nodoc
class _$ProcessStateCopyWithImpl<$Res, $Val extends ProcessState>
    implements $ProcessStateCopyWith<$Res> {
  _$ProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listResult = null,
    Object? loadPercent = null,
    Object? errorMassage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listResult: null == listResult
          ? _value.listResult
          : listResult // ignore: cast_nullable_to_non_nullable
              as List<SearchModel>,
      loadPercent: null == loadPercent
          ? _value.loadPercent
          : loadPercent // ignore: cast_nullable_to_non_nullable
              as int,
      errorMassage: null == errorMassage
          ? _value.errorMassage
          : errorMassage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProcessStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<SearchModel> listResult,
      int loadPercent,
      String errorMassage});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProcessStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listResult = null,
    Object? loadPercent = null,
    Object? errorMassage = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listResult: null == listResult
          ? _value._listResult
          : listResult // ignore: cast_nullable_to_non_nullable
              as List<SearchModel>,
      loadPercent: null == loadPercent
          ? _value.loadPercent
          : loadPercent // ignore: cast_nullable_to_non_nullable
              as int,
      errorMassage: null == errorMassage
          ? _value.errorMassage
          : errorMassage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      final List<SearchModel> listResult = const [],
      this.loadPercent = 0,
      this.errorMassage = ""})
      : _listResult = listResult;

  @override
  final bool isLoading;
  final List<SearchModel> _listResult;
  @override
  @JsonKey()
  List<SearchModel> get listResult {
    if (_listResult is EqualUnmodifiableListView) return _listResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listResult);
  }

  @override
  @JsonKey()
  final int loadPercent;
  @override
  @JsonKey()
  final String errorMassage;

  @override
  String toString() {
    return 'ProcessState.initial(isLoading: $isLoading, listResult: $listResult, loadPercent: $loadPercent, errorMassage: $errorMassage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._listResult, _listResult) &&
            (identical(other.loadPercent, loadPercent) ||
                other.loadPercent == loadPercent) &&
            (identical(other.errorMassage, errorMassage) ||
                other.errorMassage == errorMassage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_listResult),
      loadPercent,
      errorMassage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<SearchModel> listResult,
            int loadPercent, String errorMassage)
        initial,
  }) {
    return initial(isLoading, listResult, loadPercent, errorMassage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<SearchModel> listResult,
            int loadPercent, String errorMassage)?
        initial,
  }) {
    return initial?.call(isLoading, listResult, loadPercent, errorMassage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<SearchModel> listResult,
            int loadPercent, String errorMassage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, listResult, loadPercent, errorMassage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProcessState {
  const factory _Initial(
      {required final bool isLoading,
      final List<SearchModel> listResult,
      final int loadPercent,
      final String errorMassage}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  List<SearchModel> get listResult;
  @override
  int get loadPercent;
  @override
  String get errorMassage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
