// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_certificates_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyCertificatesState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyCertificatesState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyCertificatesState<$T>()';
}


}

/// @nodoc
class $MyCertificatesStateCopyWith<T,$Res>  {
$MyCertificatesStateCopyWith(MyCertificatesState<T> _, $Res Function(MyCertificatesState<T>) __);
}


/// Adds pattern-matching-related methods to [MyCertificatesState].
extension MyCertificatesStatePatterns<T> on MyCertificatesState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MyCertificatesInitial<T> value)?  mycertificatesinitial,TResult Function( MyCertificatesLoading<T> value)?  mycertificatesloading,TResult Function( MyCertificatesSuccess<T> value)?  mycertificatessuccess,TResult Function( MyCertificatesFailure<T> value)?  mycertificatesfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyCertificatesInitial() when mycertificatesinitial != null:
return mycertificatesinitial(_that);case MyCertificatesLoading() when mycertificatesloading != null:
return mycertificatesloading(_that);case MyCertificatesSuccess() when mycertificatessuccess != null:
return mycertificatessuccess(_that);case MyCertificatesFailure() when mycertificatesfailure != null:
return mycertificatesfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MyCertificatesInitial<T> value)  mycertificatesinitial,required TResult Function( MyCertificatesLoading<T> value)  mycertificatesloading,required TResult Function( MyCertificatesSuccess<T> value)  mycertificatessuccess,required TResult Function( MyCertificatesFailure<T> value)  mycertificatesfailure,}){
final _that = this;
switch (_that) {
case _MyCertificatesInitial():
return mycertificatesinitial(_that);case MyCertificatesLoading():
return mycertificatesloading(_that);case MyCertificatesSuccess():
return mycertificatessuccess(_that);case MyCertificatesFailure():
return mycertificatesfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MyCertificatesInitial<T> value)?  mycertificatesinitial,TResult? Function( MyCertificatesLoading<T> value)?  mycertificatesloading,TResult? Function( MyCertificatesSuccess<T> value)?  mycertificatessuccess,TResult? Function( MyCertificatesFailure<T> value)?  mycertificatesfailure,}){
final _that = this;
switch (_that) {
case _MyCertificatesInitial() when mycertificatesinitial != null:
return mycertificatesinitial(_that);case MyCertificatesLoading() when mycertificatesloading != null:
return mycertificatesloading(_that);case MyCertificatesSuccess() when mycertificatessuccess != null:
return mycertificatessuccess(_that);case MyCertificatesFailure() when mycertificatesfailure != null:
return mycertificatesfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  mycertificatesinitial,TResult Function()?  mycertificatesloading,TResult Function( T data)?  mycertificatessuccess,TResult Function( String error)?  mycertificatesfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyCertificatesInitial() when mycertificatesinitial != null:
return mycertificatesinitial();case MyCertificatesLoading() when mycertificatesloading != null:
return mycertificatesloading();case MyCertificatesSuccess() when mycertificatessuccess != null:
return mycertificatessuccess(_that.data);case MyCertificatesFailure() when mycertificatesfailure != null:
return mycertificatesfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  mycertificatesinitial,required TResult Function()  mycertificatesloading,required TResult Function( T data)  mycertificatessuccess,required TResult Function( String error)  mycertificatesfailure,}) {final _that = this;
switch (_that) {
case _MyCertificatesInitial():
return mycertificatesinitial();case MyCertificatesLoading():
return mycertificatesloading();case MyCertificatesSuccess():
return mycertificatessuccess(_that.data);case MyCertificatesFailure():
return mycertificatesfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  mycertificatesinitial,TResult? Function()?  mycertificatesloading,TResult? Function( T data)?  mycertificatessuccess,TResult? Function( String error)?  mycertificatesfailure,}) {final _that = this;
switch (_that) {
case _MyCertificatesInitial() when mycertificatesinitial != null:
return mycertificatesinitial();case MyCertificatesLoading() when mycertificatesloading != null:
return mycertificatesloading();case MyCertificatesSuccess() when mycertificatessuccess != null:
return mycertificatessuccess(_that.data);case MyCertificatesFailure() when mycertificatesfailure != null:
return mycertificatesfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MyCertificatesInitial<T> implements MyCertificatesState<T> {
  const _MyCertificatesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyCertificatesInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyCertificatesState<$T>.mycertificatesinitial()';
}


}




/// @nodoc


class MyCertificatesLoading<T> implements MyCertificatesState<T> {
  const MyCertificatesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyCertificatesLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyCertificatesState<$T>.mycertificatesloading()';
}


}




/// @nodoc


class MyCertificatesSuccess<T> implements MyCertificatesState<T> {
  const MyCertificatesSuccess(this.data);
  

 final  T data;

/// Create a copy of MyCertificatesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyCertificatesSuccessCopyWith<T, MyCertificatesSuccess<T>> get copyWith => _$MyCertificatesSuccessCopyWithImpl<T, MyCertificatesSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyCertificatesSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'MyCertificatesState<$T>.mycertificatessuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $MyCertificatesSuccessCopyWith<T,$Res> implements $MyCertificatesStateCopyWith<T, $Res> {
  factory $MyCertificatesSuccessCopyWith(MyCertificatesSuccess<T> value, $Res Function(MyCertificatesSuccess<T>) _then) = _$MyCertificatesSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$MyCertificatesSuccessCopyWithImpl<T,$Res>
    implements $MyCertificatesSuccessCopyWith<T, $Res> {
  _$MyCertificatesSuccessCopyWithImpl(this._self, this._then);

  final MyCertificatesSuccess<T> _self;
  final $Res Function(MyCertificatesSuccess<T>) _then;

/// Create a copy of MyCertificatesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(MyCertificatesSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class MyCertificatesFailure<T> implements MyCertificatesState<T> {
  const MyCertificatesFailure({required this.error});
  

 final  String error;

/// Create a copy of MyCertificatesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyCertificatesFailureCopyWith<T, MyCertificatesFailure<T>> get copyWith => _$MyCertificatesFailureCopyWithImpl<T, MyCertificatesFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyCertificatesFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'MyCertificatesState<$T>.mycertificatesfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $MyCertificatesFailureCopyWith<T,$Res> implements $MyCertificatesStateCopyWith<T, $Res> {
  factory $MyCertificatesFailureCopyWith(MyCertificatesFailure<T> value, $Res Function(MyCertificatesFailure<T>) _then) = _$MyCertificatesFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$MyCertificatesFailureCopyWithImpl<T,$Res>
    implements $MyCertificatesFailureCopyWith<T, $Res> {
  _$MyCertificatesFailureCopyWithImpl(this._self, this._then);

  final MyCertificatesFailure<T> _self;
  final $Res Function(MyCertificatesFailure<T>) _then;

/// Create a copy of MyCertificatesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(MyCertificatesFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
