// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_by_id_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseByIdState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseByIdState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseByIdState<$T>()';
}


}

/// @nodoc
class $CourseByIdStateCopyWith<T,$Res>  {
$CourseByIdStateCopyWith(CourseByIdState<T> _, $Res Function(CourseByIdState<T>) __);
}


/// Adds pattern-matching-related methods to [CourseByIdState].
extension CourseByIdStatePatterns<T> on CourseByIdState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CourseByIdInitial<T> value)?  initial,TResult Function( CourseByIdLoading<T> value)?  coursebyidloading,TResult Function( CourseByIdSuccess<T> value)?  coursebyidsuccess,TResult Function( CourseByIdFailure<T> value)?  coursebyidfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseByIdInitial() when initial != null:
return initial(_that);case CourseByIdLoading() when coursebyidloading != null:
return coursebyidloading(_that);case CourseByIdSuccess() when coursebyidsuccess != null:
return coursebyidsuccess(_that);case CourseByIdFailure() when coursebyidfailure != null:
return coursebyidfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CourseByIdInitial<T> value)  initial,required TResult Function( CourseByIdLoading<T> value)  coursebyidloading,required TResult Function( CourseByIdSuccess<T> value)  coursebyidsuccess,required TResult Function( CourseByIdFailure<T> value)  coursebyidfailure,}){
final _that = this;
switch (_that) {
case _CourseByIdInitial():
return initial(_that);case CourseByIdLoading():
return coursebyidloading(_that);case CourseByIdSuccess():
return coursebyidsuccess(_that);case CourseByIdFailure():
return coursebyidfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CourseByIdInitial<T> value)?  initial,TResult? Function( CourseByIdLoading<T> value)?  coursebyidloading,TResult? Function( CourseByIdSuccess<T> value)?  coursebyidsuccess,TResult? Function( CourseByIdFailure<T> value)?  coursebyidfailure,}){
final _that = this;
switch (_that) {
case _CourseByIdInitial() when initial != null:
return initial(_that);case CourseByIdLoading() when coursebyidloading != null:
return coursebyidloading(_that);case CourseByIdSuccess() when coursebyidsuccess != null:
return coursebyidsuccess(_that);case CourseByIdFailure() when coursebyidfailure != null:
return coursebyidfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  coursebyidloading,TResult Function( T data)?  coursebyidsuccess,TResult Function( String error)?  coursebyidfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseByIdInitial() when initial != null:
return initial();case CourseByIdLoading() when coursebyidloading != null:
return coursebyidloading();case CourseByIdSuccess() when coursebyidsuccess != null:
return coursebyidsuccess(_that.data);case CourseByIdFailure() when coursebyidfailure != null:
return coursebyidfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  coursebyidloading,required TResult Function( T data)  coursebyidsuccess,required TResult Function( String error)  coursebyidfailure,}) {final _that = this;
switch (_that) {
case _CourseByIdInitial():
return initial();case CourseByIdLoading():
return coursebyidloading();case CourseByIdSuccess():
return coursebyidsuccess(_that.data);case CourseByIdFailure():
return coursebyidfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  coursebyidloading,TResult? Function( T data)?  coursebyidsuccess,TResult? Function( String error)?  coursebyidfailure,}) {final _that = this;
switch (_that) {
case _CourseByIdInitial() when initial != null:
return initial();case CourseByIdLoading() when coursebyidloading != null:
return coursebyidloading();case CourseByIdSuccess() when coursebyidsuccess != null:
return coursebyidsuccess(_that.data);case CourseByIdFailure() when coursebyidfailure != null:
return coursebyidfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CourseByIdInitial<T> implements CourseByIdState<T> {
  const _CourseByIdInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseByIdInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseByIdState<$T>.initial()';
}


}




/// @nodoc


class CourseByIdLoading<T> implements CourseByIdState<T> {
  const CourseByIdLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseByIdLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseByIdState<$T>.coursebyidloading()';
}


}




/// @nodoc


class CourseByIdSuccess<T> implements CourseByIdState<T> {
  const CourseByIdSuccess(this.data);
  

 final  T data;

/// Create a copy of CourseByIdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseByIdSuccessCopyWith<T, CourseByIdSuccess<T>> get copyWith => _$CourseByIdSuccessCopyWithImpl<T, CourseByIdSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseByIdSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CourseByIdState<$T>.coursebyidsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $CourseByIdSuccessCopyWith<T,$Res> implements $CourseByIdStateCopyWith<T, $Res> {
  factory $CourseByIdSuccessCopyWith(CourseByIdSuccess<T> value, $Res Function(CourseByIdSuccess<T>) _then) = _$CourseByIdSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$CourseByIdSuccessCopyWithImpl<T,$Res>
    implements $CourseByIdSuccessCopyWith<T, $Res> {
  _$CourseByIdSuccessCopyWithImpl(this._self, this._then);

  final CourseByIdSuccess<T> _self;
  final $Res Function(CourseByIdSuccess<T>) _then;

/// Create a copy of CourseByIdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(CourseByIdSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class CourseByIdFailure<T> implements CourseByIdState<T> {
  const CourseByIdFailure({required this.error});
  

 final  String error;

/// Create a copy of CourseByIdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseByIdFailureCopyWith<T, CourseByIdFailure<T>> get copyWith => _$CourseByIdFailureCopyWithImpl<T, CourseByIdFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseByIdFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CourseByIdState<$T>.coursebyidfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $CourseByIdFailureCopyWith<T,$Res> implements $CourseByIdStateCopyWith<T, $Res> {
  factory $CourseByIdFailureCopyWith(CourseByIdFailure<T> value, $Res Function(CourseByIdFailure<T>) _then) = _$CourseByIdFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$CourseByIdFailureCopyWithImpl<T,$Res>
    implements $CourseByIdFailureCopyWith<T, $Res> {
  _$CourseByIdFailureCopyWithImpl(this._self, this._then);

  final CourseByIdFailure<T> _self;
  final $Res Function(CourseByIdFailure<T>) _then;

/// Create a copy of CourseByIdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CourseByIdFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
