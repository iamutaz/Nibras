// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_wishlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyWishlistState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWishlistState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyWishlistState<$T>()';
}


}

/// @nodoc
class $MyWishlistStateCopyWith<T,$Res>  {
$MyWishlistStateCopyWith(MyWishlistState<T> _, $Res Function(MyWishlistState<T>) __);
}


/// Adds pattern-matching-related methods to [MyWishlistState].
extension MyWishlistStatePatterns<T> on MyWishlistState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( MyWishlistLoading<T> value)?  getmywishlistloading,TResult Function( MyWishlistSuccess<T> value)?  getmywishlistsuccess,TResult Function( MyWishlistFailure<T> value)?  getmywishlistfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case MyWishlistLoading() when getmywishlistloading != null:
return getmywishlistloading(_that);case MyWishlistSuccess() when getmywishlistsuccess != null:
return getmywishlistsuccess(_that);case MyWishlistFailure() when getmywishlistfailure != null:
return getmywishlistfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( MyWishlistLoading<T> value)  getmywishlistloading,required TResult Function( MyWishlistSuccess<T> value)  getmywishlistsuccess,required TResult Function( MyWishlistFailure<T> value)  getmywishlistfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case MyWishlistLoading():
return getmywishlistloading(_that);case MyWishlistSuccess():
return getmywishlistsuccess(_that);case MyWishlistFailure():
return getmywishlistfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( MyWishlistLoading<T> value)?  getmywishlistloading,TResult? Function( MyWishlistSuccess<T> value)?  getmywishlistsuccess,TResult? Function( MyWishlistFailure<T> value)?  getmywishlistfailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case MyWishlistLoading() when getmywishlistloading != null:
return getmywishlistloading(_that);case MyWishlistSuccess() when getmywishlistsuccess != null:
return getmywishlistsuccess(_that);case MyWishlistFailure() when getmywishlistfailure != null:
return getmywishlistfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getmywishlistloading,TResult Function( T data)?  getmywishlistsuccess,TResult Function( String error)?  getmywishlistfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case MyWishlistLoading() when getmywishlistloading != null:
return getmywishlistloading();case MyWishlistSuccess() when getmywishlistsuccess != null:
return getmywishlistsuccess(_that.data);case MyWishlistFailure() when getmywishlistfailure != null:
return getmywishlistfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getmywishlistloading,required TResult Function( T data)  getmywishlistsuccess,required TResult Function( String error)  getmywishlistfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case MyWishlistLoading():
return getmywishlistloading();case MyWishlistSuccess():
return getmywishlistsuccess(_that.data);case MyWishlistFailure():
return getmywishlistfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getmywishlistloading,TResult? Function( T data)?  getmywishlistsuccess,TResult? Function( String error)?  getmywishlistfailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case MyWishlistLoading() when getmywishlistloading != null:
return getmywishlistloading();case MyWishlistSuccess() when getmywishlistsuccess != null:
return getmywishlistsuccess(_that.data);case MyWishlistFailure() when getmywishlistfailure != null:
return getmywishlistfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements MyWishlistState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyWishlistState<$T>.initial()';
}


}




/// @nodoc


class MyWishlistLoading<T> implements MyWishlistState<T> {
  const MyWishlistLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWishlistLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyWishlistState<$T>.getmywishlistloading()';
}


}




/// @nodoc


class MyWishlistSuccess<T> implements MyWishlistState<T> {
  const MyWishlistSuccess(this.data);
  

 final  T data;

/// Create a copy of MyWishlistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWishlistSuccessCopyWith<T, MyWishlistSuccess<T>> get copyWith => _$MyWishlistSuccessCopyWithImpl<T, MyWishlistSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWishlistSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'MyWishlistState<$T>.getmywishlistsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $MyWishlistSuccessCopyWith<T,$Res> implements $MyWishlistStateCopyWith<T, $Res> {
  factory $MyWishlistSuccessCopyWith(MyWishlistSuccess<T> value, $Res Function(MyWishlistSuccess<T>) _then) = _$MyWishlistSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$MyWishlistSuccessCopyWithImpl<T,$Res>
    implements $MyWishlistSuccessCopyWith<T, $Res> {
  _$MyWishlistSuccessCopyWithImpl(this._self, this._then);

  final MyWishlistSuccess<T> _self;
  final $Res Function(MyWishlistSuccess<T>) _then;

/// Create a copy of MyWishlistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(MyWishlistSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class MyWishlistFailure<T> implements MyWishlistState<T> {
  const MyWishlistFailure({required this.error});
  

 final  String error;

/// Create a copy of MyWishlistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyWishlistFailureCopyWith<T, MyWishlistFailure<T>> get copyWith => _$MyWishlistFailureCopyWithImpl<T, MyWishlistFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyWishlistFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'MyWishlistState<$T>.getmywishlistfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $MyWishlistFailureCopyWith<T,$Res> implements $MyWishlistStateCopyWith<T, $Res> {
  factory $MyWishlistFailureCopyWith(MyWishlistFailure<T> value, $Res Function(MyWishlistFailure<T>) _then) = _$MyWishlistFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$MyWishlistFailureCopyWithImpl<T,$Res>
    implements $MyWishlistFailureCopyWith<T, $Res> {
  _$MyWishlistFailureCopyWithImpl(this._self, this._then);

  final MyWishlistFailure<T> _self;
  final $Res Function(MyWishlistFailure<T>) _then;

/// Create a copy of MyWishlistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(MyWishlistFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
