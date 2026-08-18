// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_gifts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyGiftsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyGiftsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGiftsState<$T>()';
}


}

/// @nodoc
class $MyGiftsStateCopyWith<T,$Res>  {
$MyGiftsStateCopyWith(MyGiftsState<T> _, $Res Function(MyGiftsState<T>) __);
}


/// Adds pattern-matching-related methods to [MyGiftsState].
extension MyGiftsStatePatterns<T> on MyGiftsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MyGiftsInitial<T> value)?  mygiftsinitial,TResult Function( MyGiftsLoading<T> value)?  mygiftsloading,TResult Function( MyGiftsSuccess<T> value)?  mygiftssuccess,TResult Function( MyGiftsFailure<T> value)?  mygiftsfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyGiftsInitial() when mygiftsinitial != null:
return mygiftsinitial(_that);case MyGiftsLoading() when mygiftsloading != null:
return mygiftsloading(_that);case MyGiftsSuccess() when mygiftssuccess != null:
return mygiftssuccess(_that);case MyGiftsFailure() when mygiftsfailure != null:
return mygiftsfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MyGiftsInitial<T> value)  mygiftsinitial,required TResult Function( MyGiftsLoading<T> value)  mygiftsloading,required TResult Function( MyGiftsSuccess<T> value)  mygiftssuccess,required TResult Function( MyGiftsFailure<T> value)  mygiftsfailure,}){
final _that = this;
switch (_that) {
case _MyGiftsInitial():
return mygiftsinitial(_that);case MyGiftsLoading():
return mygiftsloading(_that);case MyGiftsSuccess():
return mygiftssuccess(_that);case MyGiftsFailure():
return mygiftsfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MyGiftsInitial<T> value)?  mygiftsinitial,TResult? Function( MyGiftsLoading<T> value)?  mygiftsloading,TResult? Function( MyGiftsSuccess<T> value)?  mygiftssuccess,TResult? Function( MyGiftsFailure<T> value)?  mygiftsfailure,}){
final _that = this;
switch (_that) {
case _MyGiftsInitial() when mygiftsinitial != null:
return mygiftsinitial(_that);case MyGiftsLoading() when mygiftsloading != null:
return mygiftsloading(_that);case MyGiftsSuccess() when mygiftssuccess != null:
return mygiftssuccess(_that);case MyGiftsFailure() when mygiftsfailure != null:
return mygiftsfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  mygiftsinitial,TResult Function()?  mygiftsloading,TResult Function( T data)?  mygiftssuccess,TResult Function( String error)?  mygiftsfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyGiftsInitial() when mygiftsinitial != null:
return mygiftsinitial();case MyGiftsLoading() when mygiftsloading != null:
return mygiftsloading();case MyGiftsSuccess() when mygiftssuccess != null:
return mygiftssuccess(_that.data);case MyGiftsFailure() when mygiftsfailure != null:
return mygiftsfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  mygiftsinitial,required TResult Function()  mygiftsloading,required TResult Function( T data)  mygiftssuccess,required TResult Function( String error)  mygiftsfailure,}) {final _that = this;
switch (_that) {
case _MyGiftsInitial():
return mygiftsinitial();case MyGiftsLoading():
return mygiftsloading();case MyGiftsSuccess():
return mygiftssuccess(_that.data);case MyGiftsFailure():
return mygiftsfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  mygiftsinitial,TResult? Function()?  mygiftsloading,TResult? Function( T data)?  mygiftssuccess,TResult? Function( String error)?  mygiftsfailure,}) {final _that = this;
switch (_that) {
case _MyGiftsInitial() when mygiftsinitial != null:
return mygiftsinitial();case MyGiftsLoading() when mygiftsloading != null:
return mygiftsloading();case MyGiftsSuccess() when mygiftssuccess != null:
return mygiftssuccess(_that.data);case MyGiftsFailure() when mygiftsfailure != null:
return mygiftsfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MyGiftsInitial<T> implements MyGiftsState<T> {
  const _MyGiftsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyGiftsInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGiftsState<$T>.mygiftsinitial()';
}


}




/// @nodoc


class MyGiftsLoading<T> implements MyGiftsState<T> {
  const MyGiftsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyGiftsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyGiftsState<$T>.mygiftsloading()';
}


}




/// @nodoc


class MyGiftsSuccess<T> implements MyGiftsState<T> {
  const MyGiftsSuccess(this.data);
  

 final  T data;

/// Create a copy of MyGiftsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyGiftsSuccessCopyWith<T, MyGiftsSuccess<T>> get copyWith => _$MyGiftsSuccessCopyWithImpl<T, MyGiftsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyGiftsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'MyGiftsState<$T>.mygiftssuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $MyGiftsSuccessCopyWith<T,$Res> implements $MyGiftsStateCopyWith<T, $Res> {
  factory $MyGiftsSuccessCopyWith(MyGiftsSuccess<T> value, $Res Function(MyGiftsSuccess<T>) _then) = _$MyGiftsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$MyGiftsSuccessCopyWithImpl<T,$Res>
    implements $MyGiftsSuccessCopyWith<T, $Res> {
  _$MyGiftsSuccessCopyWithImpl(this._self, this._then);

  final MyGiftsSuccess<T> _self;
  final $Res Function(MyGiftsSuccess<T>) _then;

/// Create a copy of MyGiftsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(MyGiftsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class MyGiftsFailure<T> implements MyGiftsState<T> {
  const MyGiftsFailure({required this.error});
  

 final  String error;

/// Create a copy of MyGiftsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyGiftsFailureCopyWith<T, MyGiftsFailure<T>> get copyWith => _$MyGiftsFailureCopyWithImpl<T, MyGiftsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyGiftsFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'MyGiftsState<$T>.mygiftsfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $MyGiftsFailureCopyWith<T,$Res> implements $MyGiftsStateCopyWith<T, $Res> {
  factory $MyGiftsFailureCopyWith(MyGiftsFailure<T> value, $Res Function(MyGiftsFailure<T>) _then) = _$MyGiftsFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$MyGiftsFailureCopyWithImpl<T,$Res>
    implements $MyGiftsFailureCopyWith<T, $Res> {
  _$MyGiftsFailureCopyWithImpl(this._self, this._then);

  final MyGiftsFailure<T> _self;
  final $Res Function(MyGiftsFailure<T>) _then;

/// Create a copy of MyGiftsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(MyGiftsFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
