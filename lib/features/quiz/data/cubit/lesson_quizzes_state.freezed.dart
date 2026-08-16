// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_quizzes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LessonQuizzesState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonQuizzesState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonQuizzesState<$T>()';
}


}

/// @nodoc
class $LessonQuizzesStateCopyWith<T,$Res>  {
$LessonQuizzesStateCopyWith(LessonQuizzesState<T> _, $Res Function(LessonQuizzesState<T>) __);
}


/// Adds pattern-matching-related methods to [LessonQuizzesState].
extension LessonQuizzesStatePatterns<T> on LessonQuizzesState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( LessonQuizzesLoading<T> value)?  loading,TResult Function( LessonQuizzesSuccess<T> value)?  success,TResult Function( LessonQuizzesFailure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LessonQuizzesLoading() when loading != null:
return loading(_that);case LessonQuizzesSuccess() when success != null:
return success(_that);case LessonQuizzesFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( LessonQuizzesLoading<T> value)  loading,required TResult Function( LessonQuizzesSuccess<T> value)  success,required TResult Function( LessonQuizzesFailure<T> value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LessonQuizzesLoading():
return loading(_that);case LessonQuizzesSuccess():
return success(_that);case LessonQuizzesFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( LessonQuizzesLoading<T> value)?  loading,TResult? Function( LessonQuizzesSuccess<T> value)?  success,TResult? Function( LessonQuizzesFailure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LessonQuizzesLoading() when loading != null:
return loading(_that);case LessonQuizzesSuccess() when success != null:
return success(_that);case LessonQuizzesFailure() when failure != null:
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
return initial();case LessonQuizzesLoading() when loading != null:
return loading();case LessonQuizzesSuccess() when success != null:
return success(_that.data);case LessonQuizzesFailure() when failure != null:
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
return initial();case LessonQuizzesLoading():
return loading();case LessonQuizzesSuccess():
return success(_that.data);case LessonQuizzesFailure():
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
return initial();case LessonQuizzesLoading() when loading != null:
return loading();case LessonQuizzesSuccess() when success != null:
return success(_that.data);case LessonQuizzesFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements LessonQuizzesState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonQuizzesState<$T>.initial()';
}


}




/// @nodoc


class LessonQuizzesLoading<T> implements LessonQuizzesState<T> {
  const LessonQuizzesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonQuizzesLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonQuizzesState<$T>.loading()';
}


}




/// @nodoc


class LessonQuizzesSuccess<T> implements LessonQuizzesState<T> {
  const LessonQuizzesSuccess(this.data);
  

 final  T data;

/// Create a copy of LessonQuizzesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonQuizzesSuccessCopyWith<T, LessonQuizzesSuccess<T>> get copyWith => _$LessonQuizzesSuccessCopyWithImpl<T, LessonQuizzesSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonQuizzesSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LessonQuizzesState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $LessonQuizzesSuccessCopyWith<T,$Res> implements $LessonQuizzesStateCopyWith<T, $Res> {
  factory $LessonQuizzesSuccessCopyWith(LessonQuizzesSuccess<T> value, $Res Function(LessonQuizzesSuccess<T>) _then) = _$LessonQuizzesSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LessonQuizzesSuccessCopyWithImpl<T,$Res>
    implements $LessonQuizzesSuccessCopyWith<T, $Res> {
  _$LessonQuizzesSuccessCopyWithImpl(this._self, this._then);

  final LessonQuizzesSuccess<T> _self;
  final $Res Function(LessonQuizzesSuccess<T>) _then;

/// Create a copy of LessonQuizzesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LessonQuizzesSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class LessonQuizzesFailure<T> implements LessonQuizzesState<T> {
  const LessonQuizzesFailure({required this.error});
  

 final  String error;

/// Create a copy of LessonQuizzesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonQuizzesFailureCopyWith<T, LessonQuizzesFailure<T>> get copyWith => _$LessonQuizzesFailureCopyWithImpl<T, LessonQuizzesFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonQuizzesFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'LessonQuizzesState<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $LessonQuizzesFailureCopyWith<T,$Res> implements $LessonQuizzesStateCopyWith<T, $Res> {
  factory $LessonQuizzesFailureCopyWith(LessonQuizzesFailure<T> value, $Res Function(LessonQuizzesFailure<T>) _then) = _$LessonQuizzesFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$LessonQuizzesFailureCopyWithImpl<T,$Res>
    implements $LessonQuizzesFailureCopyWith<T, $Res> {
  _$LessonQuizzesFailureCopyWithImpl(this._self, this._then);

  final LessonQuizzesFailure<T> _self;
  final $Res Function(LessonQuizzesFailure<T>) _then;

/// Create a copy of LessonQuizzesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LessonQuizzesFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
