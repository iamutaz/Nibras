// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'in_video_answer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InVideoAnswerState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InVideoAnswerState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InVideoAnswerState<$T>()';
}


}

/// @nodoc
class $InVideoAnswerStateCopyWith<T,$Res>  {
$InVideoAnswerStateCopyWith(InVideoAnswerState<T> _, $Res Function(InVideoAnswerState<T>) __);
}


/// Adds pattern-matching-related methods to [InVideoAnswerState].
extension InVideoAnswerStatePatterns<T> on InVideoAnswerState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( InVideoAnswerLoading<T> value)?  loading,TResult Function( InVideoAnswerSuccess<T> value)?  success,TResult Function( InVideoAnswerFailure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case InVideoAnswerLoading() when loading != null:
return loading(_that);case InVideoAnswerSuccess() when success != null:
return success(_that);case InVideoAnswerFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( InVideoAnswerLoading<T> value)  loading,required TResult Function( InVideoAnswerSuccess<T> value)  success,required TResult Function( InVideoAnswerFailure<T> value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case InVideoAnswerLoading():
return loading(_that);case InVideoAnswerSuccess():
return success(_that);case InVideoAnswerFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( InVideoAnswerLoading<T> value)?  loading,TResult? Function( InVideoAnswerSuccess<T> value)?  success,TResult? Function( InVideoAnswerFailure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case InVideoAnswerLoading() when loading != null:
return loading(_that);case InVideoAnswerSuccess() when success != null:
return success(_that);case InVideoAnswerFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( T data)?  success,TResult Function( String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case InVideoAnswerLoading() when loading != null:
return loading();case InVideoAnswerSuccess() when success != null:
return success(_that.data);case InVideoAnswerFailure() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( T data)  success,required TResult Function( String error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case InVideoAnswerLoading():
return loading();case InVideoAnswerSuccess():
return success(_that.data);case InVideoAnswerFailure():
return failure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( T data)?  success,TResult? Function( String error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case InVideoAnswerLoading() when loading != null:
return loading();case InVideoAnswerSuccess() when success != null:
return success(_that.data);case InVideoAnswerFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements InVideoAnswerState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InVideoAnswerState<$T>.initial()';
}


}




/// @nodoc


class InVideoAnswerLoading<T> implements InVideoAnswerState<T> {
  const InVideoAnswerLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InVideoAnswerLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InVideoAnswerState<$T>.loading()';
}


}




/// @nodoc


class InVideoAnswerSuccess<T> implements InVideoAnswerState<T> {
  const InVideoAnswerSuccess(this.data);
  

 final  T data;

/// Create a copy of InVideoAnswerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InVideoAnswerSuccessCopyWith<T, InVideoAnswerSuccess<T>> get copyWith => _$InVideoAnswerSuccessCopyWithImpl<T, InVideoAnswerSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InVideoAnswerSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'InVideoAnswerState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $InVideoAnswerSuccessCopyWith<T,$Res> implements $InVideoAnswerStateCopyWith<T, $Res> {
  factory $InVideoAnswerSuccessCopyWith(InVideoAnswerSuccess<T> value, $Res Function(InVideoAnswerSuccess<T>) _then) = _$InVideoAnswerSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$InVideoAnswerSuccessCopyWithImpl<T,$Res>
    implements $InVideoAnswerSuccessCopyWith<T, $Res> {
  _$InVideoAnswerSuccessCopyWithImpl(this._self, this._then);

  final InVideoAnswerSuccess<T> _self;
  final $Res Function(InVideoAnswerSuccess<T>) _then;

/// Create a copy of InVideoAnswerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(InVideoAnswerSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InVideoAnswerFailure<T> implements InVideoAnswerState<T> {
  const InVideoAnswerFailure({required this.error});
  

 final  String error;

/// Create a copy of InVideoAnswerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InVideoAnswerFailureCopyWith<T, InVideoAnswerFailure<T>> get copyWith => _$InVideoAnswerFailureCopyWithImpl<T, InVideoAnswerFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InVideoAnswerFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'InVideoAnswerState<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $InVideoAnswerFailureCopyWith<T,$Res> implements $InVideoAnswerStateCopyWith<T, $Res> {
  factory $InVideoAnswerFailureCopyWith(InVideoAnswerFailure<T> value, $Res Function(InVideoAnswerFailure<T>) _then) = _$InVideoAnswerFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$InVideoAnswerFailureCopyWithImpl<T,$Res>
    implements $InVideoAnswerFailureCopyWith<T, $Res> {
  _$InVideoAnswerFailureCopyWithImpl(this._self, this._then);

  final InVideoAnswerFailure<T> _self;
  final $Res Function(InVideoAnswerFailure<T>) _then;

/// Create a copy of InVideoAnswerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(InVideoAnswerFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
