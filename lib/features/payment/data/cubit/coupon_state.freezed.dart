// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CouponState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CouponState<$T>()';
}


}

/// @nodoc
class $CouponStateCopyWith<T,$Res>  {
$CouponStateCopyWith(CouponState<T> _, $Res Function(CouponState<T>) __);
}


/// Adds pattern-matching-related methods to [CouponState].
extension CouponStatePatterns<T> on CouponState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CouponInitial<T> value)?  couponsinitial,TResult Function( CouponLoading<T> value)?  couponloading,TResult Function( CouponSuccess<T> value)?  couponsuccess,TResult Function( CouponFailure<T> value)?  couponfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CouponInitial() when couponsinitial != null:
return couponsinitial(_that);case CouponLoading() when couponloading != null:
return couponloading(_that);case CouponSuccess() when couponsuccess != null:
return couponsuccess(_that);case CouponFailure() when couponfailure != null:
return couponfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CouponInitial<T> value)  couponsinitial,required TResult Function( CouponLoading<T> value)  couponloading,required TResult Function( CouponSuccess<T> value)  couponsuccess,required TResult Function( CouponFailure<T> value)  couponfailure,}){
final _that = this;
switch (_that) {
case _CouponInitial():
return couponsinitial(_that);case CouponLoading():
return couponloading(_that);case CouponSuccess():
return couponsuccess(_that);case CouponFailure():
return couponfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CouponInitial<T> value)?  couponsinitial,TResult? Function( CouponLoading<T> value)?  couponloading,TResult? Function( CouponSuccess<T> value)?  couponsuccess,TResult? Function( CouponFailure<T> value)?  couponfailure,}){
final _that = this;
switch (_that) {
case _CouponInitial() when couponsinitial != null:
return couponsinitial(_that);case CouponLoading() when couponloading != null:
return couponloading(_that);case CouponSuccess() when couponsuccess != null:
return couponsuccess(_that);case CouponFailure() when couponfailure != null:
return couponfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  couponsinitial,TResult Function()?  couponloading,TResult Function( T data)?  couponsuccess,TResult Function( String error)?  couponfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CouponInitial() when couponsinitial != null:
return couponsinitial();case CouponLoading() when couponloading != null:
return couponloading();case CouponSuccess() when couponsuccess != null:
return couponsuccess(_that.data);case CouponFailure() when couponfailure != null:
return couponfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  couponsinitial,required TResult Function()  couponloading,required TResult Function( T data)  couponsuccess,required TResult Function( String error)  couponfailure,}) {final _that = this;
switch (_that) {
case _CouponInitial():
return couponsinitial();case CouponLoading():
return couponloading();case CouponSuccess():
return couponsuccess(_that.data);case CouponFailure():
return couponfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  couponsinitial,TResult? Function()?  couponloading,TResult? Function( T data)?  couponsuccess,TResult? Function( String error)?  couponfailure,}) {final _that = this;
switch (_that) {
case _CouponInitial() when couponsinitial != null:
return couponsinitial();case CouponLoading() when couponloading != null:
return couponloading();case CouponSuccess() when couponsuccess != null:
return couponsuccess(_that.data);case CouponFailure() when couponfailure != null:
return couponfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CouponInitial<T> implements CouponState<T> {
  const _CouponInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CouponState<$T>.couponsinitial()';
}


}




/// @nodoc


class CouponLoading<T> implements CouponState<T> {
  const CouponLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CouponState<$T>.couponloading()';
}


}




/// @nodoc


class CouponSuccess<T> implements CouponState<T> {
  const CouponSuccess(this.data);
  

 final  T data;

/// Create a copy of CouponState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CouponSuccessCopyWith<T, CouponSuccess<T>> get copyWith => _$CouponSuccessCopyWithImpl<T, CouponSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CouponState<$T>.couponsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $CouponSuccessCopyWith<T,$Res> implements $CouponStateCopyWith<T, $Res> {
  factory $CouponSuccessCopyWith(CouponSuccess<T> value, $Res Function(CouponSuccess<T>) _then) = _$CouponSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$CouponSuccessCopyWithImpl<T,$Res>
    implements $CouponSuccessCopyWith<T, $Res> {
  _$CouponSuccessCopyWithImpl(this._self, this._then);

  final CouponSuccess<T> _self;
  final $Res Function(CouponSuccess<T>) _then;

/// Create a copy of CouponState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(CouponSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class CouponFailure<T> implements CouponState<T> {
  const CouponFailure({required this.error});
  

 final  String error;

/// Create a copy of CouponState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CouponFailureCopyWith<T, CouponFailure<T>> get copyWith => _$CouponFailureCopyWithImpl<T, CouponFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CouponState<$T>.couponfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $CouponFailureCopyWith<T,$Res> implements $CouponStateCopyWith<T, $Res> {
  factory $CouponFailureCopyWith(CouponFailure<T> value, $Res Function(CouponFailure<T>) _then) = _$CouponFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$CouponFailureCopyWithImpl<T,$Res>
    implements $CouponFailureCopyWith<T, $Res> {
  _$CouponFailureCopyWithImpl(this._self, this._then);

  final CouponFailure<T> _self;
  final $Res Function(CouponFailure<T>) _then;

/// Create a copy of CouponState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CouponFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
