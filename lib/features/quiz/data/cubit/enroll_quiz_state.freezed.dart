// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enroll_quiz_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EnrollQuizState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollQuizState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EnrollQuizState<$T>()';
}


}

/// @nodoc
class $EnrollQuizStateCopyWith<T,$Res>  {
$EnrollQuizStateCopyWith(EnrollQuizState<T> _, $Res Function(EnrollQuizState<T>) __);
}


/// Adds pattern-matching-related methods to [EnrollQuizState].
extension EnrollQuizStatePatterns<T> on EnrollQuizState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EnrollQuizInitial<T> value)?  enrollquizinitial,TResult Function( EnrollQuizLoading<T> value)?  enrollquizloading,TResult Function( EnrollQuizSuccess<T> value)?  enrollquizsuccess,TResult Function( EnrollQuizFailure<T> value)?  enrollquizfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollQuizInitial() when enrollquizinitial != null:
return enrollquizinitial(_that);case EnrollQuizLoading() when enrollquizloading != null:
return enrollquizloading(_that);case EnrollQuizSuccess() when enrollquizsuccess != null:
return enrollquizsuccess(_that);case EnrollQuizFailure() when enrollquizfailure != null:
return enrollquizfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EnrollQuizInitial<T> value)  enrollquizinitial,required TResult Function( EnrollQuizLoading<T> value)  enrollquizloading,required TResult Function( EnrollQuizSuccess<T> value)  enrollquizsuccess,required TResult Function( EnrollQuizFailure<T> value)  enrollquizfailure,}){
final _that = this;
switch (_that) {
case _EnrollQuizInitial():
return enrollquizinitial(_that);case EnrollQuizLoading():
return enrollquizloading(_that);case EnrollQuizSuccess():
return enrollquizsuccess(_that);case EnrollQuizFailure():
return enrollquizfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EnrollQuizInitial<T> value)?  enrollquizinitial,TResult? Function( EnrollQuizLoading<T> value)?  enrollquizloading,TResult? Function( EnrollQuizSuccess<T> value)?  enrollquizsuccess,TResult? Function( EnrollQuizFailure<T> value)?  enrollquizfailure,}){
final _that = this;
switch (_that) {
case _EnrollQuizInitial() when enrollquizinitial != null:
return enrollquizinitial(_that);case EnrollQuizLoading() when enrollquizloading != null:
return enrollquizloading(_that);case EnrollQuizSuccess() when enrollquizsuccess != null:
return enrollquizsuccess(_that);case EnrollQuizFailure() when enrollquizfailure != null:
return enrollquizfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  enrollquizinitial,TResult Function()?  enrollquizloading,TResult Function( T data)?  enrollquizsuccess,TResult Function( String error)?  enrollquizfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollQuizInitial() when enrollquizinitial != null:
return enrollquizinitial();case EnrollQuizLoading() when enrollquizloading != null:
return enrollquizloading();case EnrollQuizSuccess() when enrollquizsuccess != null:
return enrollquizsuccess(_that.data);case EnrollQuizFailure() when enrollquizfailure != null:
return enrollquizfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  enrollquizinitial,required TResult Function()  enrollquizloading,required TResult Function( T data)  enrollquizsuccess,required TResult Function( String error)  enrollquizfailure,}) {final _that = this;
switch (_that) {
case _EnrollQuizInitial():
return enrollquizinitial();case EnrollQuizLoading():
return enrollquizloading();case EnrollQuizSuccess():
return enrollquizsuccess(_that.data);case EnrollQuizFailure():
return enrollquizfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  enrollquizinitial,TResult? Function()?  enrollquizloading,TResult? Function( T data)?  enrollquizsuccess,TResult? Function( String error)?  enrollquizfailure,}) {final _that = this;
switch (_that) {
case _EnrollQuizInitial() when enrollquizinitial != null:
return enrollquizinitial();case EnrollQuizLoading() when enrollquizloading != null:
return enrollquizloading();case EnrollQuizSuccess() when enrollquizsuccess != null:
return enrollquizsuccess(_that.data);case EnrollQuizFailure() when enrollquizfailure != null:
return enrollquizfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _EnrollQuizInitial<T> implements EnrollQuizState<T> {
  const _EnrollQuizInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollQuizInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EnrollQuizState<$T>.enrollquizinitial()';
}


}




/// @nodoc


class EnrollQuizLoading<T> implements EnrollQuizState<T> {
  const EnrollQuizLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollQuizLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EnrollQuizState<$T>.enrollquizloading()';
}


}




/// @nodoc


class EnrollQuizSuccess<T> implements EnrollQuizState<T> {
  const EnrollQuizSuccess(this.data);
  

 final  T data;

/// Create a copy of EnrollQuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollQuizSuccessCopyWith<T, EnrollQuizSuccess<T>> get copyWith => _$EnrollQuizSuccessCopyWithImpl<T, EnrollQuizSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollQuizSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EnrollQuizState<$T>.enrollquizsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $EnrollQuizSuccessCopyWith<T,$Res> implements $EnrollQuizStateCopyWith<T, $Res> {
  factory $EnrollQuizSuccessCopyWith(EnrollQuizSuccess<T> value, $Res Function(EnrollQuizSuccess<T>) _then) = _$EnrollQuizSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$EnrollQuizSuccessCopyWithImpl<T,$Res>
    implements $EnrollQuizSuccessCopyWith<T, $Res> {
  _$EnrollQuizSuccessCopyWithImpl(this._self, this._then);

  final EnrollQuizSuccess<T> _self;
  final $Res Function(EnrollQuizSuccess<T>) _then;

/// Create a copy of EnrollQuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(EnrollQuizSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class EnrollQuizFailure<T> implements EnrollQuizState<T> {
  const EnrollQuizFailure({required this.error});
  

 final  String error;

/// Create a copy of EnrollQuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollQuizFailureCopyWith<T, EnrollQuizFailure<T>> get copyWith => _$EnrollQuizFailureCopyWithImpl<T, EnrollQuizFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollQuizFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'EnrollQuizState<$T>.enrollquizfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $EnrollQuizFailureCopyWith<T,$Res> implements $EnrollQuizStateCopyWith<T, $Res> {
  factory $EnrollQuizFailureCopyWith(EnrollQuizFailure<T> value, $Res Function(EnrollQuizFailure<T>) _then) = _$EnrollQuizFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$EnrollQuizFailureCopyWithImpl<T,$Res>
    implements $EnrollQuizFailureCopyWith<T, $Res> {
  _$EnrollQuizFailureCopyWithImpl(this._self, this._then);

  final EnrollQuizFailure<T> _self;
  final $Res Function(EnrollQuizFailure<T>) _then;

/// Create a copy of EnrollQuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(EnrollQuizFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
