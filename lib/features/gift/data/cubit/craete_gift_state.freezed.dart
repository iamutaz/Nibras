// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'craete_gift_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CraeteGiftState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CraeteGiftState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CraeteGiftState<$T>()';
}


}

/// @nodoc
class $CraeteGiftStateCopyWith<T,$Res>  {
$CraeteGiftStateCopyWith(CraeteGiftState<T> _, $Res Function(CraeteGiftState<T>) __);
}


/// Adds pattern-matching-related methods to [CraeteGiftState].
extension CraeteGiftStatePatterns<T> on CraeteGiftState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CraeteGiftInitial<T> value)?  craetegiftinitial,TResult Function( CraeteGiftLoading<T> value)?  craetegiftloading,TResult Function( CraeteGiftSuccess<T> value)?  craetegiftsuccess,TResult Function( CraeteGiftFailure<T> value)?  craetegiftfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CraeteGiftInitial() when craetegiftinitial != null:
return craetegiftinitial(_that);case CraeteGiftLoading() when craetegiftloading != null:
return craetegiftloading(_that);case CraeteGiftSuccess() when craetegiftsuccess != null:
return craetegiftsuccess(_that);case CraeteGiftFailure() when craetegiftfailure != null:
return craetegiftfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CraeteGiftInitial<T> value)  craetegiftinitial,required TResult Function( CraeteGiftLoading<T> value)  craetegiftloading,required TResult Function( CraeteGiftSuccess<T> value)  craetegiftsuccess,required TResult Function( CraeteGiftFailure<T> value)  craetegiftfailure,}){
final _that = this;
switch (_that) {
case _CraeteGiftInitial():
return craetegiftinitial(_that);case CraeteGiftLoading():
return craetegiftloading(_that);case CraeteGiftSuccess():
return craetegiftsuccess(_that);case CraeteGiftFailure():
return craetegiftfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CraeteGiftInitial<T> value)?  craetegiftinitial,TResult? Function( CraeteGiftLoading<T> value)?  craetegiftloading,TResult? Function( CraeteGiftSuccess<T> value)?  craetegiftsuccess,TResult? Function( CraeteGiftFailure<T> value)?  craetegiftfailure,}){
final _that = this;
switch (_that) {
case _CraeteGiftInitial() when craetegiftinitial != null:
return craetegiftinitial(_that);case CraeteGiftLoading() when craetegiftloading != null:
return craetegiftloading(_that);case CraeteGiftSuccess() when craetegiftsuccess != null:
return craetegiftsuccess(_that);case CraeteGiftFailure() when craetegiftfailure != null:
return craetegiftfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  craetegiftinitial,TResult Function()?  craetegiftloading,TResult Function( T data)?  craetegiftsuccess,TResult Function( String error)?  craetegiftfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CraeteGiftInitial() when craetegiftinitial != null:
return craetegiftinitial();case CraeteGiftLoading() when craetegiftloading != null:
return craetegiftloading();case CraeteGiftSuccess() when craetegiftsuccess != null:
return craetegiftsuccess(_that.data);case CraeteGiftFailure() when craetegiftfailure != null:
return craetegiftfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  craetegiftinitial,required TResult Function()  craetegiftloading,required TResult Function( T data)  craetegiftsuccess,required TResult Function( String error)  craetegiftfailure,}) {final _that = this;
switch (_that) {
case _CraeteGiftInitial():
return craetegiftinitial();case CraeteGiftLoading():
return craetegiftloading();case CraeteGiftSuccess():
return craetegiftsuccess(_that.data);case CraeteGiftFailure():
return craetegiftfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  craetegiftinitial,TResult? Function()?  craetegiftloading,TResult? Function( T data)?  craetegiftsuccess,TResult? Function( String error)?  craetegiftfailure,}) {final _that = this;
switch (_that) {
case _CraeteGiftInitial() when craetegiftinitial != null:
return craetegiftinitial();case CraeteGiftLoading() when craetegiftloading != null:
return craetegiftloading();case CraeteGiftSuccess() when craetegiftsuccess != null:
return craetegiftsuccess(_that.data);case CraeteGiftFailure() when craetegiftfailure != null:
return craetegiftfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CraeteGiftInitial<T> implements CraeteGiftState<T> {
  const _CraeteGiftInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CraeteGiftInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CraeteGiftState<$T>.craetegiftinitial()';
}


}




/// @nodoc


class CraeteGiftLoading<T> implements CraeteGiftState<T> {
  const CraeteGiftLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CraeteGiftLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CraeteGiftState<$T>.craetegiftloading()';
}


}




/// @nodoc


class CraeteGiftSuccess<T> implements CraeteGiftState<T> {
  const CraeteGiftSuccess(this.data);
  

 final  T data;

/// Create a copy of CraeteGiftState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CraeteGiftSuccessCopyWith<T, CraeteGiftSuccess<T>> get copyWith => _$CraeteGiftSuccessCopyWithImpl<T, CraeteGiftSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CraeteGiftSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CraeteGiftState<$T>.craetegiftsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $CraeteGiftSuccessCopyWith<T,$Res> implements $CraeteGiftStateCopyWith<T, $Res> {
  factory $CraeteGiftSuccessCopyWith(CraeteGiftSuccess<T> value, $Res Function(CraeteGiftSuccess<T>) _then) = _$CraeteGiftSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$CraeteGiftSuccessCopyWithImpl<T,$Res>
    implements $CraeteGiftSuccessCopyWith<T, $Res> {
  _$CraeteGiftSuccessCopyWithImpl(this._self, this._then);

  final CraeteGiftSuccess<T> _self;
  final $Res Function(CraeteGiftSuccess<T>) _then;

/// Create a copy of CraeteGiftState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(CraeteGiftSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class CraeteGiftFailure<T> implements CraeteGiftState<T> {
  const CraeteGiftFailure({required this.error});
  

 final  String error;

/// Create a copy of CraeteGiftState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CraeteGiftFailureCopyWith<T, CraeteGiftFailure<T>> get copyWith => _$CraeteGiftFailureCopyWithImpl<T, CraeteGiftFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CraeteGiftFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CraeteGiftState<$T>.craetegiftfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $CraeteGiftFailureCopyWith<T,$Res> implements $CraeteGiftStateCopyWith<T, $Res> {
  factory $CraeteGiftFailureCopyWith(CraeteGiftFailure<T> value, $Res Function(CraeteGiftFailure<T>) _then) = _$CraeteGiftFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$CraeteGiftFailureCopyWithImpl<T,$Res>
    implements $CraeteGiftFailureCopyWith<T, $Res> {
  _$CraeteGiftFailureCopyWithImpl(this._self, this._then);

  final CraeteGiftFailure<T> _self;
  final $Res Function(CraeteGiftFailure<T>) _then;

/// Create a copy of CraeteGiftState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CraeteGiftFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
