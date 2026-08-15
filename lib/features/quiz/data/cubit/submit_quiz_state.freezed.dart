// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_quiz_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitQuizState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitQuizState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitQuizState<$T>()';
}


}

/// @nodoc
class $SubmitQuizStateCopyWith<T,$Res>  {
$SubmitQuizStateCopyWith(SubmitQuizState<T> _, $Res Function(SubmitQuizState<T>) __);
}


/// Adds pattern-matching-related methods to [SubmitQuizState].
extension SubmitQuizStatePatterns<T> on SubmitQuizState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SubmitQuizLoading<T> value)?  loading,TResult Function( SubmitQuizSuccess<T> value)?  success,TResult Function( SubmitQuizFailure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SubmitQuizLoading() when loading != null:
return loading(_that);case SubmitQuizSuccess() when success != null:
return success(_that);case SubmitQuizFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SubmitQuizLoading<T> value)  loading,required TResult Function( SubmitQuizSuccess<T> value)  success,required TResult Function( SubmitQuizFailure<T> value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SubmitQuizLoading():
return loading(_that);case SubmitQuizSuccess():
return success(_that);case SubmitQuizFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SubmitQuizLoading<T> value)?  loading,TResult? Function( SubmitQuizSuccess<T> value)?  success,TResult? Function( SubmitQuizFailure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SubmitQuizLoading() when loading != null:
return loading(_that);case SubmitQuizSuccess() when success != null:
return success(_that);case SubmitQuizFailure() when failure != null:
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
return initial();case SubmitQuizLoading() when loading != null:
return loading();case SubmitQuizSuccess() when success != null:
return success(_that.data);case SubmitQuizFailure() when failure != null:
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
return initial();case SubmitQuizLoading():
return loading();case SubmitQuizSuccess():
return success(_that.data);case SubmitQuizFailure():
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
return initial();case SubmitQuizLoading() when loading != null:
return loading();case SubmitQuizSuccess() when success != null:
return success(_that.data);case SubmitQuizFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SubmitQuizState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitQuizState<$T>.initial()';
}


}




/// @nodoc


class SubmitQuizLoading<T> implements SubmitQuizState<T> {
  const SubmitQuizLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitQuizLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitQuizState<$T>.loading()';
}


}




/// @nodoc


class SubmitQuizSuccess<T> implements SubmitQuizState<T> {
  const SubmitQuizSuccess(this.data);
  

 final  T data;

/// Create a copy of SubmitQuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitQuizSuccessCopyWith<T, SubmitQuizSuccess<T>> get copyWith => _$SubmitQuizSuccessCopyWithImpl<T, SubmitQuizSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitQuizSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SubmitQuizState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SubmitQuizSuccessCopyWith<T,$Res> implements $SubmitQuizStateCopyWith<T, $Res> {
  factory $SubmitQuizSuccessCopyWith(SubmitQuizSuccess<T> value, $Res Function(SubmitQuizSuccess<T>) _then) = _$SubmitQuizSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SubmitQuizSuccessCopyWithImpl<T,$Res>
    implements $SubmitQuizSuccessCopyWith<T, $Res> {
  _$SubmitQuizSuccessCopyWithImpl(this._self, this._then);

  final SubmitQuizSuccess<T> _self;
  final $Res Function(SubmitQuizSuccess<T>) _then;

/// Create a copy of SubmitQuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SubmitQuizSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SubmitQuizFailure<T> implements SubmitQuizState<T> {
  const SubmitQuizFailure({required this.error});
  

 final  String error;

/// Create a copy of SubmitQuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitQuizFailureCopyWith<T, SubmitQuizFailure<T>> get copyWith => _$SubmitQuizFailureCopyWithImpl<T, SubmitQuizFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitQuizFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SubmitQuizState<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SubmitQuizFailureCopyWith<T,$Res> implements $SubmitQuizStateCopyWith<T, $Res> {
  factory $SubmitQuizFailureCopyWith(SubmitQuizFailure<T> value, $Res Function(SubmitQuizFailure<T>) _then) = _$SubmitQuizFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SubmitQuizFailureCopyWithImpl<T,$Res>
    implements $SubmitQuizFailureCopyWith<T, $Res> {
  _$SubmitQuizFailureCopyWithImpl(this._self, this._then);

  final SubmitQuizFailure<T> _self;
  final $Res Function(SubmitQuizFailure<T>) _then;

/// Create a copy of SubmitQuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SubmitQuizFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
