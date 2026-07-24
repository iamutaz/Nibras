// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrollment_course_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EnrollmentCourseState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentCourseState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EnrollmentCourseState<$T>()';
}


}

/// @nodoc
class $EnrollmentCourseStateCopyWith<T,$Res>  {
$EnrollmentCourseStateCopyWith(EnrollmentCourseState<T> _, $Res Function(EnrollmentCourseState<T>) __);
}


/// Adds pattern-matching-related methods to [EnrollmentCourseState].
extension EnrollmentCourseStatePatterns<T> on EnrollmentCourseState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EnrollmentCourseInitial<T> value)?  enrollmentcourseinitial,TResult Function( EnrollmentCourseLoading<T> value)?  enrollmentcourseloading,TResult Function( EnrollmentCourseSuccess<T> value)?  enrollmentcoursesuccess,TResult Function( EnrollmentCourseFailure<T> value)?  enrollmentcoursetailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollmentCourseInitial() when enrollmentcourseinitial != null:
return enrollmentcourseinitial(_that);case EnrollmentCourseLoading() when enrollmentcourseloading != null:
return enrollmentcourseloading(_that);case EnrollmentCourseSuccess() when enrollmentcoursesuccess != null:
return enrollmentcoursesuccess(_that);case EnrollmentCourseFailure() when enrollmentcoursetailure != null:
return enrollmentcoursetailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EnrollmentCourseInitial<T> value)  enrollmentcourseinitial,required TResult Function( EnrollmentCourseLoading<T> value)  enrollmentcourseloading,required TResult Function( EnrollmentCourseSuccess<T> value)  enrollmentcoursesuccess,required TResult Function( EnrollmentCourseFailure<T> value)  enrollmentcoursetailure,}){
final _that = this;
switch (_that) {
case _EnrollmentCourseInitial():
return enrollmentcourseinitial(_that);case EnrollmentCourseLoading():
return enrollmentcourseloading(_that);case EnrollmentCourseSuccess():
return enrollmentcoursesuccess(_that);case EnrollmentCourseFailure():
return enrollmentcoursetailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EnrollmentCourseInitial<T> value)?  enrollmentcourseinitial,TResult? Function( EnrollmentCourseLoading<T> value)?  enrollmentcourseloading,TResult? Function( EnrollmentCourseSuccess<T> value)?  enrollmentcoursesuccess,TResult? Function( EnrollmentCourseFailure<T> value)?  enrollmentcoursetailure,}){
final _that = this;
switch (_that) {
case _EnrollmentCourseInitial() when enrollmentcourseinitial != null:
return enrollmentcourseinitial(_that);case EnrollmentCourseLoading() when enrollmentcourseloading != null:
return enrollmentcourseloading(_that);case EnrollmentCourseSuccess() when enrollmentcoursesuccess != null:
return enrollmentcoursesuccess(_that);case EnrollmentCourseFailure() when enrollmentcoursetailure != null:
return enrollmentcoursetailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  enrollmentcourseinitial,TResult Function()?  enrollmentcourseloading,TResult Function( T data)?  enrollmentcoursesuccess,TResult Function( String error)?  enrollmentcoursetailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollmentCourseInitial() when enrollmentcourseinitial != null:
return enrollmentcourseinitial();case EnrollmentCourseLoading() when enrollmentcourseloading != null:
return enrollmentcourseloading();case EnrollmentCourseSuccess() when enrollmentcoursesuccess != null:
return enrollmentcoursesuccess(_that.data);case EnrollmentCourseFailure() when enrollmentcoursetailure != null:
return enrollmentcoursetailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  enrollmentcourseinitial,required TResult Function()  enrollmentcourseloading,required TResult Function( T data)  enrollmentcoursesuccess,required TResult Function( String error)  enrollmentcoursetailure,}) {final _that = this;
switch (_that) {
case _EnrollmentCourseInitial():
return enrollmentcourseinitial();case EnrollmentCourseLoading():
return enrollmentcourseloading();case EnrollmentCourseSuccess():
return enrollmentcoursesuccess(_that.data);case EnrollmentCourseFailure():
return enrollmentcoursetailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  enrollmentcourseinitial,TResult? Function()?  enrollmentcourseloading,TResult? Function( T data)?  enrollmentcoursesuccess,TResult? Function( String error)?  enrollmentcoursetailure,}) {final _that = this;
switch (_that) {
case _EnrollmentCourseInitial() when enrollmentcourseinitial != null:
return enrollmentcourseinitial();case EnrollmentCourseLoading() when enrollmentcourseloading != null:
return enrollmentcourseloading();case EnrollmentCourseSuccess() when enrollmentcoursesuccess != null:
return enrollmentcoursesuccess(_that.data);case EnrollmentCourseFailure() when enrollmentcoursetailure != null:
return enrollmentcoursetailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _EnrollmentCourseInitial<T> implements EnrollmentCourseState<T> {
  const _EnrollmentCourseInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentCourseInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EnrollmentCourseState<$T>.enrollmentcourseinitial()';
}


}




/// @nodoc


class EnrollmentCourseLoading<T> implements EnrollmentCourseState<T> {
  const EnrollmentCourseLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentCourseLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EnrollmentCourseState<$T>.enrollmentcourseloading()';
}


}




/// @nodoc


class EnrollmentCourseSuccess<T> implements EnrollmentCourseState<T> {
  const EnrollmentCourseSuccess(this.data);
  

 final  T data;

/// Create a copy of EnrollmentCourseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentCourseSuccessCopyWith<T, EnrollmentCourseSuccess<T>> get copyWith => _$EnrollmentCourseSuccessCopyWithImpl<T, EnrollmentCourseSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentCourseSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EnrollmentCourseState<$T>.enrollmentcoursesuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $EnrollmentCourseSuccessCopyWith<T,$Res> implements $EnrollmentCourseStateCopyWith<T, $Res> {
  factory $EnrollmentCourseSuccessCopyWith(EnrollmentCourseSuccess<T> value, $Res Function(EnrollmentCourseSuccess<T>) _then) = _$EnrollmentCourseSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$EnrollmentCourseSuccessCopyWithImpl<T,$Res>
    implements $EnrollmentCourseSuccessCopyWith<T, $Res> {
  _$EnrollmentCourseSuccessCopyWithImpl(this._self, this._then);

  final EnrollmentCourseSuccess<T> _self;
  final $Res Function(EnrollmentCourseSuccess<T>) _then;

/// Create a copy of EnrollmentCourseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(EnrollmentCourseSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class EnrollmentCourseFailure<T> implements EnrollmentCourseState<T> {
  const EnrollmentCourseFailure({required this.error});
  

 final  String error;

/// Create a copy of EnrollmentCourseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentCourseFailureCopyWith<T, EnrollmentCourseFailure<T>> get copyWith => _$EnrollmentCourseFailureCopyWithImpl<T, EnrollmentCourseFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentCourseFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'EnrollmentCourseState<$T>.enrollmentcoursetailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $EnrollmentCourseFailureCopyWith<T,$Res> implements $EnrollmentCourseStateCopyWith<T, $Res> {
  factory $EnrollmentCourseFailureCopyWith(EnrollmentCourseFailure<T> value, $Res Function(EnrollmentCourseFailure<T>) _then) = _$EnrollmentCourseFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$EnrollmentCourseFailureCopyWithImpl<T,$Res>
    implements $EnrollmentCourseFailureCopyWith<T, $Res> {
  _$EnrollmentCourseFailureCopyWithImpl(this._self, this._then);

  final EnrollmentCourseFailure<T> _self;
  final $Res Function(EnrollmentCourseFailure<T>) _then;

/// Create a copy of EnrollmentCourseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(EnrollmentCourseFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
