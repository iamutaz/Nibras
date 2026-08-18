// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_gift_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClaimGiftState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimGiftState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClaimGiftState<$T>()';
}


}

/// @nodoc
class $ClaimGiftStateCopyWith<T,$Res>  {
$ClaimGiftStateCopyWith(ClaimGiftState<T> _, $Res Function(ClaimGiftState<T>) __);
}


/// Adds pattern-matching-related methods to [ClaimGiftState].
extension ClaimGiftStatePatterns<T> on ClaimGiftState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ClaimGiftInitial<T> value)?  claimgiftinitial,TResult Function( ClaimGiftLoading<T> value)?  claimgiftloading,TResult Function( ClaimGiftSuccess<T> value)?  claimgiftsuccess,TResult Function( ClaimGiftFailure<T> value)?  claimgiftfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimGiftInitial() when claimgiftinitial != null:
return claimgiftinitial(_that);case ClaimGiftLoading() when claimgiftloading != null:
return claimgiftloading(_that);case ClaimGiftSuccess() when claimgiftsuccess != null:
return claimgiftsuccess(_that);case ClaimGiftFailure() when claimgiftfailure != null:
return claimgiftfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ClaimGiftInitial<T> value)  claimgiftinitial,required TResult Function( ClaimGiftLoading<T> value)  claimgiftloading,required TResult Function( ClaimGiftSuccess<T> value)  claimgiftsuccess,required TResult Function( ClaimGiftFailure<T> value)  claimgiftfailure,}){
final _that = this;
switch (_that) {
case _ClaimGiftInitial():
return claimgiftinitial(_that);case ClaimGiftLoading():
return claimgiftloading(_that);case ClaimGiftSuccess():
return claimgiftsuccess(_that);case ClaimGiftFailure():
return claimgiftfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ClaimGiftInitial<T> value)?  claimgiftinitial,TResult? Function( ClaimGiftLoading<T> value)?  claimgiftloading,TResult? Function( ClaimGiftSuccess<T> value)?  claimgiftsuccess,TResult? Function( ClaimGiftFailure<T> value)?  claimgiftfailure,}){
final _that = this;
switch (_that) {
case _ClaimGiftInitial() when claimgiftinitial != null:
return claimgiftinitial(_that);case ClaimGiftLoading() when claimgiftloading != null:
return claimgiftloading(_that);case ClaimGiftSuccess() when claimgiftsuccess != null:
return claimgiftsuccess(_that);case ClaimGiftFailure() when claimgiftfailure != null:
return claimgiftfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  claimgiftinitial,TResult Function()?  claimgiftloading,TResult Function( T data)?  claimgiftsuccess,TResult Function( String error)?  claimgiftfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimGiftInitial() when claimgiftinitial != null:
return claimgiftinitial();case ClaimGiftLoading() when claimgiftloading != null:
return claimgiftloading();case ClaimGiftSuccess() when claimgiftsuccess != null:
return claimgiftsuccess(_that.data);case ClaimGiftFailure() when claimgiftfailure != null:
return claimgiftfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  claimgiftinitial,required TResult Function()  claimgiftloading,required TResult Function( T data)  claimgiftsuccess,required TResult Function( String error)  claimgiftfailure,}) {final _that = this;
switch (_that) {
case _ClaimGiftInitial():
return claimgiftinitial();case ClaimGiftLoading():
return claimgiftloading();case ClaimGiftSuccess():
return claimgiftsuccess(_that.data);case ClaimGiftFailure():
return claimgiftfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  claimgiftinitial,TResult? Function()?  claimgiftloading,TResult? Function( T data)?  claimgiftsuccess,TResult? Function( String error)?  claimgiftfailure,}) {final _that = this;
switch (_that) {
case _ClaimGiftInitial() when claimgiftinitial != null:
return claimgiftinitial();case ClaimGiftLoading() when claimgiftloading != null:
return claimgiftloading();case ClaimGiftSuccess() when claimgiftsuccess != null:
return claimgiftsuccess(_that.data);case ClaimGiftFailure() when claimgiftfailure != null:
return claimgiftfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ClaimGiftInitial<T> implements ClaimGiftState<T> {
  const _ClaimGiftInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimGiftInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClaimGiftState<$T>.claimgiftinitial()';
}


}




/// @nodoc


class ClaimGiftLoading<T> implements ClaimGiftState<T> {
  const ClaimGiftLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimGiftLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClaimGiftState<$T>.claimgiftloading()';
}


}




/// @nodoc


class ClaimGiftSuccess<T> implements ClaimGiftState<T> {
  const ClaimGiftSuccess(this.data);
  

 final  T data;

/// Create a copy of ClaimGiftState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimGiftSuccessCopyWith<T, ClaimGiftSuccess<T>> get copyWith => _$ClaimGiftSuccessCopyWithImpl<T, ClaimGiftSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimGiftSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ClaimGiftState<$T>.claimgiftsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ClaimGiftSuccessCopyWith<T,$Res> implements $ClaimGiftStateCopyWith<T, $Res> {
  factory $ClaimGiftSuccessCopyWith(ClaimGiftSuccess<T> value, $Res Function(ClaimGiftSuccess<T>) _then) = _$ClaimGiftSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ClaimGiftSuccessCopyWithImpl<T,$Res>
    implements $ClaimGiftSuccessCopyWith<T, $Res> {
  _$ClaimGiftSuccessCopyWithImpl(this._self, this._then);

  final ClaimGiftSuccess<T> _self;
  final $Res Function(ClaimGiftSuccess<T>) _then;

/// Create a copy of ClaimGiftState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ClaimGiftSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ClaimGiftFailure<T> implements ClaimGiftState<T> {
  const ClaimGiftFailure({required this.error});
  

 final  String error;

/// Create a copy of ClaimGiftState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimGiftFailureCopyWith<T, ClaimGiftFailure<T>> get copyWith => _$ClaimGiftFailureCopyWithImpl<T, ClaimGiftFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimGiftFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ClaimGiftState<$T>.claimgiftfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ClaimGiftFailureCopyWith<T,$Res> implements $ClaimGiftStateCopyWith<T, $Res> {
  factory $ClaimGiftFailureCopyWith(ClaimGiftFailure<T> value, $Res Function(ClaimGiftFailure<T>) _then) = _$ClaimGiftFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ClaimGiftFailureCopyWithImpl<T,$Res>
    implements $ClaimGiftFailureCopyWith<T, $Res> {
  _$ClaimGiftFailureCopyWithImpl(this._self, this._then);

  final ClaimGiftFailure<T> _self;
  final $Res Function(ClaimGiftFailure<T>) _then;

/// Create a copy of ClaimGiftState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ClaimGiftFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
