// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllNotificationsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllNotificationsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllNotificationsState<$T>()';
}


}

/// @nodoc
class $AllNotificationsStateCopyWith<T,$Res>  {
$AllNotificationsStateCopyWith(AllNotificationsState<T> _, $Res Function(AllNotificationsState<T>) __);
}


/// Adds pattern-matching-related methods to [AllNotificationsState].
extension AllNotificationsStatePatterns<T> on AllNotificationsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  allnotificationsinitial,TResult Function( AllNotificationsLoading<T> value)?  allnotificationsloading,TResult Function( AllNotificationsSuccess<T> value)?  allnotificationssuccess,TResult Function( AllNotificationsFailure<T> value)?  allnotificationsfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when allnotificationsinitial != null:
return allnotificationsinitial(_that);case AllNotificationsLoading() when allnotificationsloading != null:
return allnotificationsloading(_that);case AllNotificationsSuccess() when allnotificationssuccess != null:
return allnotificationssuccess(_that);case AllNotificationsFailure() when allnotificationsfailure != null:
return allnotificationsfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  allnotificationsinitial,required TResult Function( AllNotificationsLoading<T> value)  allnotificationsloading,required TResult Function( AllNotificationsSuccess<T> value)  allnotificationssuccess,required TResult Function( AllNotificationsFailure<T> value)  allnotificationsfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return allnotificationsinitial(_that);case AllNotificationsLoading():
return allnotificationsloading(_that);case AllNotificationsSuccess():
return allnotificationssuccess(_that);case AllNotificationsFailure():
return allnotificationsfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  allnotificationsinitial,TResult? Function( AllNotificationsLoading<T> value)?  allnotificationsloading,TResult? Function( AllNotificationsSuccess<T> value)?  allnotificationssuccess,TResult? Function( AllNotificationsFailure<T> value)?  allnotificationsfailure,}){
final _that = this;
switch (_that) {
case _Initial() when allnotificationsinitial != null:
return allnotificationsinitial(_that);case AllNotificationsLoading() when allnotificationsloading != null:
return allnotificationsloading(_that);case AllNotificationsSuccess() when allnotificationssuccess != null:
return allnotificationssuccess(_that);case AllNotificationsFailure() when allnotificationsfailure != null:
return allnotificationsfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  allnotificationsinitial,TResult Function()?  allnotificationsloading,TResult Function( T data)?  allnotificationssuccess,TResult Function( String error)?  allnotificationsfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when allnotificationsinitial != null:
return allnotificationsinitial();case AllNotificationsLoading() when allnotificationsloading != null:
return allnotificationsloading();case AllNotificationsSuccess() when allnotificationssuccess != null:
return allnotificationssuccess(_that.data);case AllNotificationsFailure() when allnotificationsfailure != null:
return allnotificationsfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  allnotificationsinitial,required TResult Function()  allnotificationsloading,required TResult Function( T data)  allnotificationssuccess,required TResult Function( String error)  allnotificationsfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return allnotificationsinitial();case AllNotificationsLoading():
return allnotificationsloading();case AllNotificationsSuccess():
return allnotificationssuccess(_that.data);case AllNotificationsFailure():
return allnotificationsfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  allnotificationsinitial,TResult? Function()?  allnotificationsloading,TResult? Function( T data)?  allnotificationssuccess,TResult? Function( String error)?  allnotificationsfailure,}) {final _that = this;
switch (_that) {
case _Initial() when allnotificationsinitial != null:
return allnotificationsinitial();case AllNotificationsLoading() when allnotificationsloading != null:
return allnotificationsloading();case AllNotificationsSuccess() when allnotificationssuccess != null:
return allnotificationssuccess(_that.data);case AllNotificationsFailure() when allnotificationsfailure != null:
return allnotificationsfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements AllNotificationsState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllNotificationsState<$T>.allnotificationsinitial()';
}


}




/// @nodoc


class AllNotificationsLoading<T> implements AllNotificationsState<T> {
  const AllNotificationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllNotificationsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllNotificationsState<$T>.allnotificationsloading()';
}


}




/// @nodoc


class AllNotificationsSuccess<T> implements AllNotificationsState<T> {
  const AllNotificationsSuccess(this.data);
  

 final  T data;

/// Create a copy of AllNotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllNotificationsSuccessCopyWith<T, AllNotificationsSuccess<T>> get copyWith => _$AllNotificationsSuccessCopyWithImpl<T, AllNotificationsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllNotificationsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AllNotificationsState<$T>.allnotificationssuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $AllNotificationsSuccessCopyWith<T,$Res> implements $AllNotificationsStateCopyWith<T, $Res> {
  factory $AllNotificationsSuccessCopyWith(AllNotificationsSuccess<T> value, $Res Function(AllNotificationsSuccess<T>) _then) = _$AllNotificationsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$AllNotificationsSuccessCopyWithImpl<T,$Res>
    implements $AllNotificationsSuccessCopyWith<T, $Res> {
  _$AllNotificationsSuccessCopyWithImpl(this._self, this._then);

  final AllNotificationsSuccess<T> _self;
  final $Res Function(AllNotificationsSuccess<T>) _then;

/// Create a copy of AllNotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(AllNotificationsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class AllNotificationsFailure<T> implements AllNotificationsState<T> {
  const AllNotificationsFailure({required this.error});
  

 final  String error;

/// Create a copy of AllNotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllNotificationsFailureCopyWith<T, AllNotificationsFailure<T>> get copyWith => _$AllNotificationsFailureCopyWithImpl<T, AllNotificationsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllNotificationsFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AllNotificationsState<$T>.allnotificationsfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $AllNotificationsFailureCopyWith<T,$Res> implements $AllNotificationsStateCopyWith<T, $Res> {
  factory $AllNotificationsFailureCopyWith(AllNotificationsFailure<T> value, $Res Function(AllNotificationsFailure<T>) _then) = _$AllNotificationsFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$AllNotificationsFailureCopyWithImpl<T,$Res>
    implements $AllNotificationsFailureCopyWith<T, $Res> {
  _$AllNotificationsFailureCopyWithImpl(this._self, this._then);

  final AllNotificationsFailure<T> _self;
  final $Res Function(AllNotificationsFailure<T>) _then;

/// Create a copy of AllNotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AllNotificationsFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
