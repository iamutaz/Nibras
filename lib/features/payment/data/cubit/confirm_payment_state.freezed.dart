// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConfirmPaymentState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPaymentState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfirmPaymentState<$T>()';
}


}

/// @nodoc
class $ConfirmPaymentStateCopyWith<T,$Res>  {
$ConfirmPaymentStateCopyWith(ConfirmPaymentState<T> _, $Res Function(ConfirmPaymentState<T>) __);
}


/// Adds pattern-matching-related methods to [ConfirmPaymentState].
extension ConfirmPaymentStatePatterns<T> on ConfirmPaymentState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ConfirmPaymentInitial<T> value)?  confirmpaymentinitial,TResult Function( ConfirmPaymentLoading<T> value)?  confirmpaymentloading,TResult Function( ConfirmPaymentSuccess<T> value)?  confirmpaymentsuccess,TResult Function( ConfirmPaymentFailure<T> value)?  confirmpaymentfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmPaymentInitial() when confirmpaymentinitial != null:
return confirmpaymentinitial(_that);case ConfirmPaymentLoading() when confirmpaymentloading != null:
return confirmpaymentloading(_that);case ConfirmPaymentSuccess() when confirmpaymentsuccess != null:
return confirmpaymentsuccess(_that);case ConfirmPaymentFailure() when confirmpaymentfailure != null:
return confirmpaymentfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ConfirmPaymentInitial<T> value)  confirmpaymentinitial,required TResult Function( ConfirmPaymentLoading<T> value)  confirmpaymentloading,required TResult Function( ConfirmPaymentSuccess<T> value)  confirmpaymentsuccess,required TResult Function( ConfirmPaymentFailure<T> value)  confirmpaymentfailure,}){
final _that = this;
switch (_that) {
case _ConfirmPaymentInitial():
return confirmpaymentinitial(_that);case ConfirmPaymentLoading():
return confirmpaymentloading(_that);case ConfirmPaymentSuccess():
return confirmpaymentsuccess(_that);case ConfirmPaymentFailure():
return confirmpaymentfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ConfirmPaymentInitial<T> value)?  confirmpaymentinitial,TResult? Function( ConfirmPaymentLoading<T> value)?  confirmpaymentloading,TResult? Function( ConfirmPaymentSuccess<T> value)?  confirmpaymentsuccess,TResult? Function( ConfirmPaymentFailure<T> value)?  confirmpaymentfailure,}){
final _that = this;
switch (_that) {
case _ConfirmPaymentInitial() when confirmpaymentinitial != null:
return confirmpaymentinitial(_that);case ConfirmPaymentLoading() when confirmpaymentloading != null:
return confirmpaymentloading(_that);case ConfirmPaymentSuccess() when confirmpaymentsuccess != null:
return confirmpaymentsuccess(_that);case ConfirmPaymentFailure() when confirmpaymentfailure != null:
return confirmpaymentfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  confirmpaymentinitial,TResult Function()?  confirmpaymentloading,TResult Function( T data)?  confirmpaymentsuccess,TResult Function( String error)?  confirmpaymentfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmPaymentInitial() when confirmpaymentinitial != null:
return confirmpaymentinitial();case ConfirmPaymentLoading() when confirmpaymentloading != null:
return confirmpaymentloading();case ConfirmPaymentSuccess() when confirmpaymentsuccess != null:
return confirmpaymentsuccess(_that.data);case ConfirmPaymentFailure() when confirmpaymentfailure != null:
return confirmpaymentfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  confirmpaymentinitial,required TResult Function()  confirmpaymentloading,required TResult Function( T data)  confirmpaymentsuccess,required TResult Function( String error)  confirmpaymentfailure,}) {final _that = this;
switch (_that) {
case _ConfirmPaymentInitial():
return confirmpaymentinitial();case ConfirmPaymentLoading():
return confirmpaymentloading();case ConfirmPaymentSuccess():
return confirmpaymentsuccess(_that.data);case ConfirmPaymentFailure():
return confirmpaymentfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  confirmpaymentinitial,TResult? Function()?  confirmpaymentloading,TResult? Function( T data)?  confirmpaymentsuccess,TResult? Function( String error)?  confirmpaymentfailure,}) {final _that = this;
switch (_that) {
case _ConfirmPaymentInitial() when confirmpaymentinitial != null:
return confirmpaymentinitial();case ConfirmPaymentLoading() when confirmpaymentloading != null:
return confirmpaymentloading();case ConfirmPaymentSuccess() when confirmpaymentsuccess != null:
return confirmpaymentsuccess(_that.data);case ConfirmPaymentFailure() when confirmpaymentfailure != null:
return confirmpaymentfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ConfirmPaymentInitial<T> implements ConfirmPaymentState<T> {
  const _ConfirmPaymentInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmPaymentInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfirmPaymentState<$T>.confirmpaymentinitial()';
}


}




/// @nodoc


class ConfirmPaymentLoading<T> implements ConfirmPaymentState<T> {
  const ConfirmPaymentLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPaymentLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfirmPaymentState<$T>.confirmpaymentloading()';
}


}




/// @nodoc


class ConfirmPaymentSuccess<T> implements ConfirmPaymentState<T> {
  const ConfirmPaymentSuccess(this.data);
  

 final  T data;

/// Create a copy of ConfirmPaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPaymentSuccessCopyWith<T, ConfirmPaymentSuccess<T>> get copyWith => _$ConfirmPaymentSuccessCopyWithImpl<T, ConfirmPaymentSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPaymentSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ConfirmPaymentState<$T>.confirmpaymentsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ConfirmPaymentSuccessCopyWith<T,$Res> implements $ConfirmPaymentStateCopyWith<T, $Res> {
  factory $ConfirmPaymentSuccessCopyWith(ConfirmPaymentSuccess<T> value, $Res Function(ConfirmPaymentSuccess<T>) _then) = _$ConfirmPaymentSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ConfirmPaymentSuccessCopyWithImpl<T,$Res>
    implements $ConfirmPaymentSuccessCopyWith<T, $Res> {
  _$ConfirmPaymentSuccessCopyWithImpl(this._self, this._then);

  final ConfirmPaymentSuccess<T> _self;
  final $Res Function(ConfirmPaymentSuccess<T>) _then;

/// Create a copy of ConfirmPaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ConfirmPaymentSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ConfirmPaymentFailure<T> implements ConfirmPaymentState<T> {
  const ConfirmPaymentFailure({required this.error});
  

 final  String error;

/// Create a copy of ConfirmPaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPaymentFailureCopyWith<T, ConfirmPaymentFailure<T>> get copyWith => _$ConfirmPaymentFailureCopyWithImpl<T, ConfirmPaymentFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPaymentFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ConfirmPaymentState<$T>.confirmpaymentfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ConfirmPaymentFailureCopyWith<T,$Res> implements $ConfirmPaymentStateCopyWith<T, $Res> {
  factory $ConfirmPaymentFailureCopyWith(ConfirmPaymentFailure<T> value, $Res Function(ConfirmPaymentFailure<T>) _then) = _$ConfirmPaymentFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ConfirmPaymentFailureCopyWithImpl<T,$Res>
    implements $ConfirmPaymentFailureCopyWith<T, $Res> {
  _$ConfirmPaymentFailureCopyWithImpl(this._self, this._then);

  final ConfirmPaymentFailure<T> _self;
  final $Res Function(ConfirmPaymentFailure<T>) _then;

/// Create a copy of ConfirmPaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ConfirmPaymentFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
