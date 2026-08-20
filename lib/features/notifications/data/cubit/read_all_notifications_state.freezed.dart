// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_all_notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReadAllNotificationsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadAllNotificationsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReadAllNotificationsState<$T>()';
}


}

/// @nodoc
class $ReadAllNotificationsStateCopyWith<T,$Res>  {
$ReadAllNotificationsStateCopyWith(ReadAllNotificationsState<T> _, $Res Function(ReadAllNotificationsState<T>) __);
}


/// Adds pattern-matching-related methods to [ReadAllNotificationsState].
extension ReadAllNotificationsStatePatterns<T> on ReadAllNotificationsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  readallnotificationsinitial,TResult Function( ReadAllNotificationsLoading<T> value)?  readallnotificationsloading,TResult Function( ReadAllNotificationsSuccess<T> value)?  readallnotificationssuccess,TResult Function( ReadAllNotificationsFailure<T> value)?  readallnotificationsfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when readallnotificationsinitial != null:
return readallnotificationsinitial(_that);case ReadAllNotificationsLoading() when readallnotificationsloading != null:
return readallnotificationsloading(_that);case ReadAllNotificationsSuccess() when readallnotificationssuccess != null:
return readallnotificationssuccess(_that);case ReadAllNotificationsFailure() when readallnotificationsfailure != null:
return readallnotificationsfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  readallnotificationsinitial,required TResult Function( ReadAllNotificationsLoading<T> value)  readallnotificationsloading,required TResult Function( ReadAllNotificationsSuccess<T> value)  readallnotificationssuccess,required TResult Function( ReadAllNotificationsFailure<T> value)  readallnotificationsfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return readallnotificationsinitial(_that);case ReadAllNotificationsLoading():
return readallnotificationsloading(_that);case ReadAllNotificationsSuccess():
return readallnotificationssuccess(_that);case ReadAllNotificationsFailure():
return readallnotificationsfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  readallnotificationsinitial,TResult? Function( ReadAllNotificationsLoading<T> value)?  readallnotificationsloading,TResult? Function( ReadAllNotificationsSuccess<T> value)?  readallnotificationssuccess,TResult? Function( ReadAllNotificationsFailure<T> value)?  readallnotificationsfailure,}){
final _that = this;
switch (_that) {
case _Initial() when readallnotificationsinitial != null:
return readallnotificationsinitial(_that);case ReadAllNotificationsLoading() when readallnotificationsloading != null:
return readallnotificationsloading(_that);case ReadAllNotificationsSuccess() when readallnotificationssuccess != null:
return readallnotificationssuccess(_that);case ReadAllNotificationsFailure() when readallnotificationsfailure != null:
return readallnotificationsfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  readallnotificationsinitial,TResult Function()?  readallnotificationsloading,TResult Function( T data)?  readallnotificationssuccess,TResult Function( String error)?  readallnotificationsfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when readallnotificationsinitial != null:
return readallnotificationsinitial();case ReadAllNotificationsLoading() when readallnotificationsloading != null:
return readallnotificationsloading();case ReadAllNotificationsSuccess() when readallnotificationssuccess != null:
return readallnotificationssuccess(_that.data);case ReadAllNotificationsFailure() when readallnotificationsfailure != null:
return readallnotificationsfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  readallnotificationsinitial,required TResult Function()  readallnotificationsloading,required TResult Function( T data)  readallnotificationssuccess,required TResult Function( String error)  readallnotificationsfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return readallnotificationsinitial();case ReadAllNotificationsLoading():
return readallnotificationsloading();case ReadAllNotificationsSuccess():
return readallnotificationssuccess(_that.data);case ReadAllNotificationsFailure():
return readallnotificationsfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  readallnotificationsinitial,TResult? Function()?  readallnotificationsloading,TResult? Function( T data)?  readallnotificationssuccess,TResult? Function( String error)?  readallnotificationsfailure,}) {final _that = this;
switch (_that) {
case _Initial() when readallnotificationsinitial != null:
return readallnotificationsinitial();case ReadAllNotificationsLoading() when readallnotificationsloading != null:
return readallnotificationsloading();case ReadAllNotificationsSuccess() when readallnotificationssuccess != null:
return readallnotificationssuccess(_that.data);case ReadAllNotificationsFailure() when readallnotificationsfailure != null:
return readallnotificationsfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements ReadAllNotificationsState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReadAllNotificationsState<$T>.readallnotificationsinitial()';
}


}




/// @nodoc


class ReadAllNotificationsLoading<T> implements ReadAllNotificationsState<T> {
  const ReadAllNotificationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadAllNotificationsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReadAllNotificationsState<$T>.readallnotificationsloading()';
}


}




/// @nodoc


class ReadAllNotificationsSuccess<T> implements ReadAllNotificationsState<T> {
  const ReadAllNotificationsSuccess(this.data);
  

 final  T data;

/// Create a copy of ReadAllNotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadAllNotificationsSuccessCopyWith<T, ReadAllNotificationsSuccess<T>> get copyWith => _$ReadAllNotificationsSuccessCopyWithImpl<T, ReadAllNotificationsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadAllNotificationsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ReadAllNotificationsState<$T>.readallnotificationssuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ReadAllNotificationsSuccessCopyWith<T,$Res> implements $ReadAllNotificationsStateCopyWith<T, $Res> {
  factory $ReadAllNotificationsSuccessCopyWith(ReadAllNotificationsSuccess<T> value, $Res Function(ReadAllNotificationsSuccess<T>) _then) = _$ReadAllNotificationsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ReadAllNotificationsSuccessCopyWithImpl<T,$Res>
    implements $ReadAllNotificationsSuccessCopyWith<T, $Res> {
  _$ReadAllNotificationsSuccessCopyWithImpl(this._self, this._then);

  final ReadAllNotificationsSuccess<T> _self;
  final $Res Function(ReadAllNotificationsSuccess<T>) _then;

/// Create a copy of ReadAllNotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ReadAllNotificationsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ReadAllNotificationsFailure<T> implements ReadAllNotificationsState<T> {
  const ReadAllNotificationsFailure({required this.error});
  

 final  String error;

/// Create a copy of ReadAllNotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadAllNotificationsFailureCopyWith<T, ReadAllNotificationsFailure<T>> get copyWith => _$ReadAllNotificationsFailureCopyWithImpl<T, ReadAllNotificationsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadAllNotificationsFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ReadAllNotificationsState<$T>.readallnotificationsfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ReadAllNotificationsFailureCopyWith<T,$Res> implements $ReadAllNotificationsStateCopyWith<T, $Res> {
  factory $ReadAllNotificationsFailureCopyWith(ReadAllNotificationsFailure<T> value, $Res Function(ReadAllNotificationsFailure<T>) _then) = _$ReadAllNotificationsFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ReadAllNotificationsFailureCopyWithImpl<T,$Res>
    implements $ReadAllNotificationsFailureCopyWith<T, $Res> {
  _$ReadAllNotificationsFailureCopyWithImpl(this._self, this._then);

  final ReadAllNotificationsFailure<T> _self;
  final $Res Function(ReadAllNotificationsFailure<T>) _then;

/// Create a copy of ReadAllNotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ReadAllNotificationsFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
