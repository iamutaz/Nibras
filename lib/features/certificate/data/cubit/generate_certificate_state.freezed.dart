// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_certificate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GenerateCertificateState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateCertificateState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateCertificateState<$T>()';
}


}

/// @nodoc
class $GenerateCertificateStateCopyWith<T,$Res>  {
$GenerateCertificateStateCopyWith(GenerateCertificateState<T> _, $Res Function(GenerateCertificateState<T>) __);
}


/// Adds pattern-matching-related methods to [GenerateCertificateState].
extension GenerateCertificateStatePatterns<T> on GenerateCertificateState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GenerateCertificateInitial<T> value)?  generatecertificateinitial,TResult Function( GenerateCertificateLoading<T> value)?  generatecertificateloading,TResult Function( GenerateCertificateSuccess<T> value)?  generatecertificatesuccess,TResult Function( GenerateCertificateFailure<T> value)?  generatecertificatefailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerateCertificateInitial() when generatecertificateinitial != null:
return generatecertificateinitial(_that);case GenerateCertificateLoading() when generatecertificateloading != null:
return generatecertificateloading(_that);case GenerateCertificateSuccess() when generatecertificatesuccess != null:
return generatecertificatesuccess(_that);case GenerateCertificateFailure() when generatecertificatefailure != null:
return generatecertificatefailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GenerateCertificateInitial<T> value)  generatecertificateinitial,required TResult Function( GenerateCertificateLoading<T> value)  generatecertificateloading,required TResult Function( GenerateCertificateSuccess<T> value)  generatecertificatesuccess,required TResult Function( GenerateCertificateFailure<T> value)  generatecertificatefailure,}){
final _that = this;
switch (_that) {
case _GenerateCertificateInitial():
return generatecertificateinitial(_that);case GenerateCertificateLoading():
return generatecertificateloading(_that);case GenerateCertificateSuccess():
return generatecertificatesuccess(_that);case GenerateCertificateFailure():
return generatecertificatefailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GenerateCertificateInitial<T> value)?  generatecertificateinitial,TResult? Function( GenerateCertificateLoading<T> value)?  generatecertificateloading,TResult? Function( GenerateCertificateSuccess<T> value)?  generatecertificatesuccess,TResult? Function( GenerateCertificateFailure<T> value)?  generatecertificatefailure,}){
final _that = this;
switch (_that) {
case _GenerateCertificateInitial() when generatecertificateinitial != null:
return generatecertificateinitial(_that);case GenerateCertificateLoading() when generatecertificateloading != null:
return generatecertificateloading(_that);case GenerateCertificateSuccess() when generatecertificatesuccess != null:
return generatecertificatesuccess(_that);case GenerateCertificateFailure() when generatecertificatefailure != null:
return generatecertificatefailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  generatecertificateinitial,TResult Function()?  generatecertificateloading,TResult Function( T data)?  generatecertificatesuccess,TResult Function( String error)?  generatecertificatefailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerateCertificateInitial() when generatecertificateinitial != null:
return generatecertificateinitial();case GenerateCertificateLoading() when generatecertificateloading != null:
return generatecertificateloading();case GenerateCertificateSuccess() when generatecertificatesuccess != null:
return generatecertificatesuccess(_that.data);case GenerateCertificateFailure() when generatecertificatefailure != null:
return generatecertificatefailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  generatecertificateinitial,required TResult Function()  generatecertificateloading,required TResult Function( T data)  generatecertificatesuccess,required TResult Function( String error)  generatecertificatefailure,}) {final _that = this;
switch (_that) {
case _GenerateCertificateInitial():
return generatecertificateinitial();case GenerateCertificateLoading():
return generatecertificateloading();case GenerateCertificateSuccess():
return generatecertificatesuccess(_that.data);case GenerateCertificateFailure():
return generatecertificatefailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  generatecertificateinitial,TResult? Function()?  generatecertificateloading,TResult? Function( T data)?  generatecertificatesuccess,TResult? Function( String error)?  generatecertificatefailure,}) {final _that = this;
switch (_that) {
case _GenerateCertificateInitial() when generatecertificateinitial != null:
return generatecertificateinitial();case GenerateCertificateLoading() when generatecertificateloading != null:
return generatecertificateloading();case GenerateCertificateSuccess() when generatecertificatesuccess != null:
return generatecertificatesuccess(_that.data);case GenerateCertificateFailure() when generatecertificatefailure != null:
return generatecertificatefailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _GenerateCertificateInitial<T> implements GenerateCertificateState<T> {
  const _GenerateCertificateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerateCertificateInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateCertificateState<$T>.generatecertificateinitial()';
}


}




/// @nodoc


class GenerateCertificateLoading<T> implements GenerateCertificateState<T> {
  const GenerateCertificateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateCertificateLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateCertificateState<$T>.generatecertificateloading()';
}


}




/// @nodoc


class GenerateCertificateSuccess<T> implements GenerateCertificateState<T> {
  const GenerateCertificateSuccess(this.data);
  

 final  T data;

/// Create a copy of GenerateCertificateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateCertificateSuccessCopyWith<T, GenerateCertificateSuccess<T>> get copyWith => _$GenerateCertificateSuccessCopyWithImpl<T, GenerateCertificateSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateCertificateSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GenerateCertificateState<$T>.generatecertificatesuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $GenerateCertificateSuccessCopyWith<T,$Res> implements $GenerateCertificateStateCopyWith<T, $Res> {
  factory $GenerateCertificateSuccessCopyWith(GenerateCertificateSuccess<T> value, $Res Function(GenerateCertificateSuccess<T>) _then) = _$GenerateCertificateSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$GenerateCertificateSuccessCopyWithImpl<T,$Res>
    implements $GenerateCertificateSuccessCopyWith<T, $Res> {
  _$GenerateCertificateSuccessCopyWithImpl(this._self, this._then);

  final GenerateCertificateSuccess<T> _self;
  final $Res Function(GenerateCertificateSuccess<T>) _then;

/// Create a copy of GenerateCertificateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(GenerateCertificateSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class GenerateCertificateFailure<T> implements GenerateCertificateState<T> {
  const GenerateCertificateFailure({required this.error});
  

 final  String error;

/// Create a copy of GenerateCertificateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateCertificateFailureCopyWith<T, GenerateCertificateFailure<T>> get copyWith => _$GenerateCertificateFailureCopyWithImpl<T, GenerateCertificateFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateCertificateFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GenerateCertificateState<$T>.generatecertificatefailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $GenerateCertificateFailureCopyWith<T,$Res> implements $GenerateCertificateStateCopyWith<T, $Res> {
  factory $GenerateCertificateFailureCopyWith(GenerateCertificateFailure<T> value, $Res Function(GenerateCertificateFailure<T>) _then) = _$GenerateCertificateFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$GenerateCertificateFailureCopyWithImpl<T,$Res>
    implements $GenerateCertificateFailureCopyWith<T, $Res> {
  _$GenerateCertificateFailureCopyWithImpl(this._self, this._then);

  final GenerateCertificateFailure<T> _self;
  final $Res Function(GenerateCertificateFailure<T>) _then;

/// Create a copy of GenerateCertificateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GenerateCertificateFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
