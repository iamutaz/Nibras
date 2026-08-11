// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notes_by_id_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetNotesByIdState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotesByIdState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetNotesByIdState<$T>()';
}


}

/// @nodoc
class $GetNotesByIdStateCopyWith<T,$Res>  {
$GetNotesByIdStateCopyWith(GetNotesByIdState<T> _, $Res Function(GetNotesByIdState<T>) __);
}


/// Adds pattern-matching-related methods to [GetNotesByIdState].
extension GetNotesByIdStatePatterns<T> on GetNotesByIdState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetNotesByIDInitial<T> value)?  getnotesbyidinitial,TResult Function( GetNotesByIDLoading<T> value)?  getnotesbyidloading,TResult Function( GetNotesByIDSuccess<T> value)?  getnotesbyidsuccess,TResult Function( GetNotesByIDFailure<T> value)?  getnotesbyidfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetNotesByIDInitial() when getnotesbyidinitial != null:
return getnotesbyidinitial(_that);case GetNotesByIDLoading() when getnotesbyidloading != null:
return getnotesbyidloading(_that);case GetNotesByIDSuccess() when getnotesbyidsuccess != null:
return getnotesbyidsuccess(_that);case GetNotesByIDFailure() when getnotesbyidfailure != null:
return getnotesbyidfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetNotesByIDInitial<T> value)  getnotesbyidinitial,required TResult Function( GetNotesByIDLoading<T> value)  getnotesbyidloading,required TResult Function( GetNotesByIDSuccess<T> value)  getnotesbyidsuccess,required TResult Function( GetNotesByIDFailure<T> value)  getnotesbyidfailure,}){
final _that = this;
switch (_that) {
case _GetNotesByIDInitial():
return getnotesbyidinitial(_that);case GetNotesByIDLoading():
return getnotesbyidloading(_that);case GetNotesByIDSuccess():
return getnotesbyidsuccess(_that);case GetNotesByIDFailure():
return getnotesbyidfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetNotesByIDInitial<T> value)?  getnotesbyidinitial,TResult? Function( GetNotesByIDLoading<T> value)?  getnotesbyidloading,TResult? Function( GetNotesByIDSuccess<T> value)?  getnotesbyidsuccess,TResult? Function( GetNotesByIDFailure<T> value)?  getnotesbyidfailure,}){
final _that = this;
switch (_that) {
case _GetNotesByIDInitial() when getnotesbyidinitial != null:
return getnotesbyidinitial(_that);case GetNotesByIDLoading() when getnotesbyidloading != null:
return getnotesbyidloading(_that);case GetNotesByIDSuccess() when getnotesbyidsuccess != null:
return getnotesbyidsuccess(_that);case GetNotesByIDFailure() when getnotesbyidfailure != null:
return getnotesbyidfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getnotesbyidinitial,TResult Function()?  getnotesbyidloading,TResult Function( T data)?  getnotesbyidsuccess,TResult Function( String error)?  getnotesbyidfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetNotesByIDInitial() when getnotesbyidinitial != null:
return getnotesbyidinitial();case GetNotesByIDLoading() when getnotesbyidloading != null:
return getnotesbyidloading();case GetNotesByIDSuccess() when getnotesbyidsuccess != null:
return getnotesbyidsuccess(_that.data);case GetNotesByIDFailure() when getnotesbyidfailure != null:
return getnotesbyidfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getnotesbyidinitial,required TResult Function()  getnotesbyidloading,required TResult Function( T data)  getnotesbyidsuccess,required TResult Function( String error)  getnotesbyidfailure,}) {final _that = this;
switch (_that) {
case _GetNotesByIDInitial():
return getnotesbyidinitial();case GetNotesByIDLoading():
return getnotesbyidloading();case GetNotesByIDSuccess():
return getnotesbyidsuccess(_that.data);case GetNotesByIDFailure():
return getnotesbyidfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getnotesbyidinitial,TResult? Function()?  getnotesbyidloading,TResult? Function( T data)?  getnotesbyidsuccess,TResult? Function( String error)?  getnotesbyidfailure,}) {final _that = this;
switch (_that) {
case _GetNotesByIDInitial() when getnotesbyidinitial != null:
return getnotesbyidinitial();case GetNotesByIDLoading() when getnotesbyidloading != null:
return getnotesbyidloading();case GetNotesByIDSuccess() when getnotesbyidsuccess != null:
return getnotesbyidsuccess(_that.data);case GetNotesByIDFailure() when getnotesbyidfailure != null:
return getnotesbyidfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _GetNotesByIDInitial<T> implements GetNotesByIdState<T> {
  const _GetNotesByIDInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetNotesByIDInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetNotesByIdState<$T>.getnotesbyidinitial()';
}


}




/// @nodoc


class GetNotesByIDLoading<T> implements GetNotesByIdState<T> {
  const GetNotesByIDLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotesByIDLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetNotesByIdState<$T>.getnotesbyidloading()';
}


}




/// @nodoc


class GetNotesByIDSuccess<T> implements GetNotesByIdState<T> {
  const GetNotesByIDSuccess(this.data);
  

 final  T data;

/// Create a copy of GetNotesByIdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNotesByIDSuccessCopyWith<T, GetNotesByIDSuccess<T>> get copyWith => _$GetNotesByIDSuccessCopyWithImpl<T, GetNotesByIDSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotesByIDSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetNotesByIdState<$T>.getnotesbyidsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $GetNotesByIDSuccessCopyWith<T,$Res> implements $GetNotesByIdStateCopyWith<T, $Res> {
  factory $GetNotesByIDSuccessCopyWith(GetNotesByIDSuccess<T> value, $Res Function(GetNotesByIDSuccess<T>) _then) = _$GetNotesByIDSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$GetNotesByIDSuccessCopyWithImpl<T,$Res>
    implements $GetNotesByIDSuccessCopyWith<T, $Res> {
  _$GetNotesByIDSuccessCopyWithImpl(this._self, this._then);

  final GetNotesByIDSuccess<T> _self;
  final $Res Function(GetNotesByIDSuccess<T>) _then;

/// Create a copy of GetNotesByIdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(GetNotesByIDSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class GetNotesByIDFailure<T> implements GetNotesByIdState<T> {
  const GetNotesByIDFailure({required this.error});
  

 final  String error;

/// Create a copy of GetNotesByIdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNotesByIDFailureCopyWith<T, GetNotesByIDFailure<T>> get copyWith => _$GetNotesByIDFailureCopyWithImpl<T, GetNotesByIDFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotesByIDFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GetNotesByIdState<$T>.getnotesbyidfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $GetNotesByIDFailureCopyWith<T,$Res> implements $GetNotesByIdStateCopyWith<T, $Res> {
  factory $GetNotesByIDFailureCopyWith(GetNotesByIDFailure<T> value, $Res Function(GetNotesByIDFailure<T>) _then) = _$GetNotesByIDFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$GetNotesByIDFailureCopyWithImpl<T,$Res>
    implements $GetNotesByIDFailureCopyWith<T, $Res> {
  _$GetNotesByIDFailureCopyWithImpl(this._self, this._then);

  final GetNotesByIDFailure<T> _self;
  final $Res Function(GetNotesByIDFailure<T>) _then;

/// Create a copy of GetNotesByIdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GetNotesByIDFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
