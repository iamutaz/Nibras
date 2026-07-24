// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrollments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EnrollmentsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EnrollmentsState<$T>()';
}


}

/// @nodoc
class $EnrollmentsStateCopyWith<T,$Res>  {
$EnrollmentsStateCopyWith(EnrollmentsState<T> _, $Res Function(EnrollmentsState<T>) __);
}


/// Adds pattern-matching-related methods to [EnrollmentsState].
extension EnrollmentsStatePatterns<T> on EnrollmentsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EnrollmentsInitial<T> value)?  enrollmentsinitial,TResult Function( _EnrollmentsLoading<T> value)?  enrollmentsinitialloading,TResult Function( _EnrollmentsSuccess<T> value)?  enrollmentsinitialsuccess,TResult Function( _EnrollmentsFailure<T> value)?  enrollmentsinitialfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollmentsInitial() when enrollmentsinitial != null:
return enrollmentsinitial(_that);case _EnrollmentsLoading() when enrollmentsinitialloading != null:
return enrollmentsinitialloading(_that);case _EnrollmentsSuccess() when enrollmentsinitialsuccess != null:
return enrollmentsinitialsuccess(_that);case _EnrollmentsFailure() when enrollmentsinitialfailure != null:
return enrollmentsinitialfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EnrollmentsInitial<T> value)  enrollmentsinitial,required TResult Function( _EnrollmentsLoading<T> value)  enrollmentsinitialloading,required TResult Function( _EnrollmentsSuccess<T> value)  enrollmentsinitialsuccess,required TResult Function( _EnrollmentsFailure<T> value)  enrollmentsinitialfailure,}){
final _that = this;
switch (_that) {
case _EnrollmentsInitial():
return enrollmentsinitial(_that);case _EnrollmentsLoading():
return enrollmentsinitialloading(_that);case _EnrollmentsSuccess():
return enrollmentsinitialsuccess(_that);case _EnrollmentsFailure():
return enrollmentsinitialfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EnrollmentsInitial<T> value)?  enrollmentsinitial,TResult? Function( _EnrollmentsLoading<T> value)?  enrollmentsinitialloading,TResult? Function( _EnrollmentsSuccess<T> value)?  enrollmentsinitialsuccess,TResult? Function( _EnrollmentsFailure<T> value)?  enrollmentsinitialfailure,}){
final _that = this;
switch (_that) {
case _EnrollmentsInitial() when enrollmentsinitial != null:
return enrollmentsinitial(_that);case _EnrollmentsLoading() when enrollmentsinitialloading != null:
return enrollmentsinitialloading(_that);case _EnrollmentsSuccess() when enrollmentsinitialsuccess != null:
return enrollmentsinitialsuccess(_that);case _EnrollmentsFailure() when enrollmentsinitialfailure != null:
return enrollmentsinitialfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  enrollmentsinitial,TResult Function()?  enrollmentsinitialloading,TResult Function( T data)?  enrollmentsinitialsuccess,TResult Function( String error)?  enrollmentsinitialfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollmentsInitial() when enrollmentsinitial != null:
return enrollmentsinitial();case _EnrollmentsLoading() when enrollmentsinitialloading != null:
return enrollmentsinitialloading();case _EnrollmentsSuccess() when enrollmentsinitialsuccess != null:
return enrollmentsinitialsuccess(_that.data);case _EnrollmentsFailure() when enrollmentsinitialfailure != null:
return enrollmentsinitialfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  enrollmentsinitial,required TResult Function()  enrollmentsinitialloading,required TResult Function( T data)  enrollmentsinitialsuccess,required TResult Function( String error)  enrollmentsinitialfailure,}) {final _that = this;
switch (_that) {
case _EnrollmentsInitial():
return enrollmentsinitial();case _EnrollmentsLoading():
return enrollmentsinitialloading();case _EnrollmentsSuccess():
return enrollmentsinitialsuccess(_that.data);case _EnrollmentsFailure():
return enrollmentsinitialfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  enrollmentsinitial,TResult? Function()?  enrollmentsinitialloading,TResult? Function( T data)?  enrollmentsinitialsuccess,TResult? Function( String error)?  enrollmentsinitialfailure,}) {final _that = this;
switch (_that) {
case _EnrollmentsInitial() when enrollmentsinitial != null:
return enrollmentsinitial();case _EnrollmentsLoading() when enrollmentsinitialloading != null:
return enrollmentsinitialloading();case _EnrollmentsSuccess() when enrollmentsinitialsuccess != null:
return enrollmentsinitialsuccess(_that.data);case _EnrollmentsFailure() when enrollmentsinitialfailure != null:
return enrollmentsinitialfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _EnrollmentsInitial<T> implements EnrollmentsState<T> {
  const _EnrollmentsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentsInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EnrollmentsState<$T>.enrollmentsinitial()';
}


}




/// @nodoc


class _EnrollmentsLoading<T> implements EnrollmentsState<T> {
  const _EnrollmentsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EnrollmentsState<$T>.enrollmentsinitialloading()';
}


}




/// @nodoc


class _EnrollmentsSuccess<T> implements EnrollmentsState<T> {
  const _EnrollmentsSuccess(this.data);
  

 final  T data;

/// Create a copy of EnrollmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollmentsSuccessCopyWith<T, _EnrollmentsSuccess<T>> get copyWith => __$EnrollmentsSuccessCopyWithImpl<T, _EnrollmentsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EnrollmentsState<$T>.enrollmentsinitialsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class _$EnrollmentsSuccessCopyWith<T,$Res> implements $EnrollmentsStateCopyWith<T, $Res> {
  factory _$EnrollmentsSuccessCopyWith(_EnrollmentsSuccess<T> value, $Res Function(_EnrollmentsSuccess<T>) _then) = __$EnrollmentsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class __$EnrollmentsSuccessCopyWithImpl<T,$Res>
    implements _$EnrollmentsSuccessCopyWith<T, $Res> {
  __$EnrollmentsSuccessCopyWithImpl(this._self, this._then);

  final _EnrollmentsSuccess<T> _self;
  final $Res Function(_EnrollmentsSuccess<T>) _then;

/// Create a copy of EnrollmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_EnrollmentsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _EnrollmentsFailure<T> implements EnrollmentsState<T> {
  const _EnrollmentsFailure({required this.error});
  

 final  String error;

/// Create a copy of EnrollmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollmentsFailureCopyWith<T, _EnrollmentsFailure<T>> get copyWith => __$EnrollmentsFailureCopyWithImpl<T, _EnrollmentsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentsFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'EnrollmentsState<$T>.enrollmentsinitialfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$EnrollmentsFailureCopyWith<T,$Res> implements $EnrollmentsStateCopyWith<T, $Res> {
  factory _$EnrollmentsFailureCopyWith(_EnrollmentsFailure<T> value, $Res Function(_EnrollmentsFailure<T>) _then) = __$EnrollmentsFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$EnrollmentsFailureCopyWithImpl<T,$Res>
    implements _$EnrollmentsFailureCopyWith<T, $Res> {
  __$EnrollmentsFailureCopyWithImpl(this._self, this._then);

  final _EnrollmentsFailure<T> _self;
  final $Res Function(_EnrollmentsFailure<T>) _then;

/// Create a copy of EnrollmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_EnrollmentsFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
