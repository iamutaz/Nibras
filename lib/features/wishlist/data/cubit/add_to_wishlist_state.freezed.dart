// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_wishlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddToWishlistState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToWishlistState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToWishlistState<$T>()';
}


}

/// @nodoc
class $AddToWishlistStateCopyWith<T,$Res>  {
$AddToWishlistStateCopyWith(AddToWishlistState<T> _, $Res Function(AddToWishlistState<T>) __);
}


/// Adds pattern-matching-related methods to [AddToWishlistState].
extension AddToWishlistStatePatterns<T> on AddToWishlistState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( AddToWishlistLoading<T> value)?  addtowishlistloading,TResult Function( AddToWishlistSuccess<T> value)?  addtowishlistsuccess,TResult Function( AddToWishlistFailure<T> value)?  addtowishlistfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddToWishlistLoading() when addtowishlistloading != null:
return addtowishlistloading(_that);case AddToWishlistSuccess() when addtowishlistsuccess != null:
return addtowishlistsuccess(_that);case AddToWishlistFailure() when addtowishlistfailure != null:
return addtowishlistfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( AddToWishlistLoading<T> value)  addtowishlistloading,required TResult Function( AddToWishlistSuccess<T> value)  addtowishlistsuccess,required TResult Function( AddToWishlistFailure<T> value)  addtowishlistfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case AddToWishlistLoading():
return addtowishlistloading(_that);case AddToWishlistSuccess():
return addtowishlistsuccess(_that);case AddToWishlistFailure():
return addtowishlistfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( AddToWishlistLoading<T> value)?  addtowishlistloading,TResult? Function( AddToWishlistSuccess<T> value)?  addtowishlistsuccess,TResult? Function( AddToWishlistFailure<T> value)?  addtowishlistfailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddToWishlistLoading() when addtowishlistloading != null:
return addtowishlistloading(_that);case AddToWishlistSuccess() when addtowishlistsuccess != null:
return addtowishlistsuccess(_that);case AddToWishlistFailure() when addtowishlistfailure != null:
return addtowishlistfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  addtowishlistloading,TResult Function( T data)?  addtowishlistsuccess,TResult Function( String error)?  addtowishlistfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddToWishlistLoading() when addtowishlistloading != null:
return addtowishlistloading();case AddToWishlistSuccess() when addtowishlistsuccess != null:
return addtowishlistsuccess(_that.data);case AddToWishlistFailure() when addtowishlistfailure != null:
return addtowishlistfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  addtowishlistloading,required TResult Function( T data)  addtowishlistsuccess,required TResult Function( String error)  addtowishlistfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case AddToWishlistLoading():
return addtowishlistloading();case AddToWishlistSuccess():
return addtowishlistsuccess(_that.data);case AddToWishlistFailure():
return addtowishlistfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  addtowishlistloading,TResult? Function( T data)?  addtowishlistsuccess,TResult? Function( String error)?  addtowishlistfailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddToWishlistLoading() when addtowishlistloading != null:
return addtowishlistloading();case AddToWishlistSuccess() when addtowishlistsuccess != null:
return addtowishlistsuccess(_that.data);case AddToWishlistFailure() when addtowishlistfailure != null:
return addtowishlistfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements AddToWishlistState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToWishlistState<$T>.initial()';
}


}




/// @nodoc


class AddToWishlistLoading<T> implements AddToWishlistState<T> {
  const AddToWishlistLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToWishlistLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToWishlistState<$T>.addtowishlistloading()';
}


}




/// @nodoc


class AddToWishlistSuccess<T> implements AddToWishlistState<T> {
  const AddToWishlistSuccess(this.data);
  

 final  T data;

/// Create a copy of AddToWishlistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToWishlistSuccessCopyWith<T, AddToWishlistSuccess<T>> get copyWith => _$AddToWishlistSuccessCopyWithImpl<T, AddToWishlistSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToWishlistSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AddToWishlistState<$T>.addtowishlistsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $AddToWishlistSuccessCopyWith<T,$Res> implements $AddToWishlistStateCopyWith<T, $Res> {
  factory $AddToWishlistSuccessCopyWith(AddToWishlistSuccess<T> value, $Res Function(AddToWishlistSuccess<T>) _then) = _$AddToWishlistSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$AddToWishlistSuccessCopyWithImpl<T,$Res>
    implements $AddToWishlistSuccessCopyWith<T, $Res> {
  _$AddToWishlistSuccessCopyWithImpl(this._self, this._then);

  final AddToWishlistSuccess<T> _self;
  final $Res Function(AddToWishlistSuccess<T>) _then;

/// Create a copy of AddToWishlistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(AddToWishlistSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class AddToWishlistFailure<T> implements AddToWishlistState<T> {
  const AddToWishlistFailure({required this.error});
  

 final  String error;

/// Create a copy of AddToWishlistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToWishlistFailureCopyWith<T, AddToWishlistFailure<T>> get copyWith => _$AddToWishlistFailureCopyWithImpl<T, AddToWishlistFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToWishlistFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AddToWishlistState<$T>.addtowishlistfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $AddToWishlistFailureCopyWith<T,$Res> implements $AddToWishlistStateCopyWith<T, $Res> {
  factory $AddToWishlistFailureCopyWith(AddToWishlistFailure<T> value, $Res Function(AddToWishlistFailure<T>) _then) = _$AddToWishlistFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$AddToWishlistFailureCopyWithImpl<T,$Res>
    implements $AddToWishlistFailureCopyWith<T, $Res> {
  _$AddToWishlistFailureCopyWithImpl(this._self, this._then);

  final AddToWishlistFailure<T> _self;
  final $Res Function(AddToWishlistFailure<T>) _then;

/// Create a copy of AddToWishlistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AddToWishlistFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
