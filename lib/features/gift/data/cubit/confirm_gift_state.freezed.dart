// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_gift_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConfirmGiftState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmGiftState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfirmGiftState<$T>()';
}


}

/// @nodoc
class $ConfirmGiftStateCopyWith<T,$Res>  {
$ConfirmGiftStateCopyWith(ConfirmGiftState<T> _, $Res Function(ConfirmGiftState<T>) __);
}


/// Adds pattern-matching-related methods to [ConfirmGiftState].
extension ConfirmGiftStatePatterns<T> on ConfirmGiftState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ConfirmGiftInitial<T> value)?  confirmgiftinitial,TResult Function( ConfirmGiftLoading<T> value)?  confirmgiftloading,TResult Function( ConfirmGiftSuccess<T> value)?  confirmgiftsuccess,TResult Function( ConfirmGiftFailure<T> value)?  confirmgiftfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmGiftInitial() when confirmgiftinitial != null:
return confirmgiftinitial(_that);case ConfirmGiftLoading() when confirmgiftloading != null:
return confirmgiftloading(_that);case ConfirmGiftSuccess() when confirmgiftsuccess != null:
return confirmgiftsuccess(_that);case ConfirmGiftFailure() when confirmgiftfailure != null:
return confirmgiftfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ConfirmGiftInitial<T> value)  confirmgiftinitial,required TResult Function( ConfirmGiftLoading<T> value)  confirmgiftloading,required TResult Function( ConfirmGiftSuccess<T> value)  confirmgiftsuccess,required TResult Function( ConfirmGiftFailure<T> value)  confirmgiftfailure,}){
final _that = this;
switch (_that) {
case _ConfirmGiftInitial():
return confirmgiftinitial(_that);case ConfirmGiftLoading():
return confirmgiftloading(_that);case ConfirmGiftSuccess():
return confirmgiftsuccess(_that);case ConfirmGiftFailure():
return confirmgiftfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ConfirmGiftInitial<T> value)?  confirmgiftinitial,TResult? Function( ConfirmGiftLoading<T> value)?  confirmgiftloading,TResult? Function( ConfirmGiftSuccess<T> value)?  confirmgiftsuccess,TResult? Function( ConfirmGiftFailure<T> value)?  confirmgiftfailure,}){
final _that = this;
switch (_that) {
case _ConfirmGiftInitial() when confirmgiftinitial != null:
return confirmgiftinitial(_that);case ConfirmGiftLoading() when confirmgiftloading != null:
return confirmgiftloading(_that);case ConfirmGiftSuccess() when confirmgiftsuccess != null:
return confirmgiftsuccess(_that);case ConfirmGiftFailure() when confirmgiftfailure != null:
return confirmgiftfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  confirmgiftinitial,TResult Function()?  confirmgiftloading,TResult Function( T data)?  confirmgiftsuccess,TResult Function( String error)?  confirmgiftfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmGiftInitial() when confirmgiftinitial != null:
return confirmgiftinitial();case ConfirmGiftLoading() when confirmgiftloading != null:
return confirmgiftloading();case ConfirmGiftSuccess() when confirmgiftsuccess != null:
return confirmgiftsuccess(_that.data);case ConfirmGiftFailure() when confirmgiftfailure != null:
return confirmgiftfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  confirmgiftinitial,required TResult Function()  confirmgiftloading,required TResult Function( T data)  confirmgiftsuccess,required TResult Function( String error)  confirmgiftfailure,}) {final _that = this;
switch (_that) {
case _ConfirmGiftInitial():
return confirmgiftinitial();case ConfirmGiftLoading():
return confirmgiftloading();case ConfirmGiftSuccess():
return confirmgiftsuccess(_that.data);case ConfirmGiftFailure():
return confirmgiftfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  confirmgiftinitial,TResult? Function()?  confirmgiftloading,TResult? Function( T data)?  confirmgiftsuccess,TResult? Function( String error)?  confirmgiftfailure,}) {final _that = this;
switch (_that) {
case _ConfirmGiftInitial() when confirmgiftinitial != null:
return confirmgiftinitial();case ConfirmGiftLoading() when confirmgiftloading != null:
return confirmgiftloading();case ConfirmGiftSuccess() when confirmgiftsuccess != null:
return confirmgiftsuccess(_that.data);case ConfirmGiftFailure() when confirmgiftfailure != null:
return confirmgiftfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ConfirmGiftInitial<T> implements ConfirmGiftState<T> {
  const _ConfirmGiftInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmGiftInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfirmGiftState<$T>.confirmgiftinitial()';
}


}




/// @nodoc


class ConfirmGiftLoading<T> implements ConfirmGiftState<T> {
  const ConfirmGiftLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmGiftLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConfirmGiftState<$T>.confirmgiftloading()';
}


}




/// @nodoc


class ConfirmGiftSuccess<T> implements ConfirmGiftState<T> {
  const ConfirmGiftSuccess(this.data);
  

 final  T data;

/// Create a copy of ConfirmGiftState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmGiftSuccessCopyWith<T, ConfirmGiftSuccess<T>> get copyWith => _$ConfirmGiftSuccessCopyWithImpl<T, ConfirmGiftSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmGiftSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ConfirmGiftState<$T>.confirmgiftsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ConfirmGiftSuccessCopyWith<T,$Res> implements $ConfirmGiftStateCopyWith<T, $Res> {
  factory $ConfirmGiftSuccessCopyWith(ConfirmGiftSuccess<T> value, $Res Function(ConfirmGiftSuccess<T>) _then) = _$ConfirmGiftSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ConfirmGiftSuccessCopyWithImpl<T,$Res>
    implements $ConfirmGiftSuccessCopyWith<T, $Res> {
  _$ConfirmGiftSuccessCopyWithImpl(this._self, this._then);

  final ConfirmGiftSuccess<T> _self;
  final $Res Function(ConfirmGiftSuccess<T>) _then;

/// Create a copy of ConfirmGiftState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ConfirmGiftSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ConfirmGiftFailure<T> implements ConfirmGiftState<T> {
  const ConfirmGiftFailure({required this.error});
  

 final  String error;

/// Create a copy of ConfirmGiftState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmGiftFailureCopyWith<T, ConfirmGiftFailure<T>> get copyWith => _$ConfirmGiftFailureCopyWithImpl<T, ConfirmGiftFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmGiftFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ConfirmGiftState<$T>.confirmgiftfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ConfirmGiftFailureCopyWith<T,$Res> implements $ConfirmGiftStateCopyWith<T, $Res> {
  factory $ConfirmGiftFailureCopyWith(ConfirmGiftFailure<T> value, $Res Function(ConfirmGiftFailure<T>) _then) = _$ConfirmGiftFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ConfirmGiftFailureCopyWithImpl<T,$Res>
    implements $ConfirmGiftFailureCopyWith<T, $Res> {
  _$ConfirmGiftFailureCopyWithImpl(this._self, this._then);

  final ConfirmGiftFailure<T> _self;
  final $Res Function(ConfirmGiftFailure<T>) _then;

/// Create a copy of ConfirmGiftState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ConfirmGiftFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
