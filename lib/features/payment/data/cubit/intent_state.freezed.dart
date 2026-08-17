// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intent_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntentState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntentState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntentState<$T>()';
}


}

/// @nodoc
class $IntentStateCopyWith<T,$Res>  {
$IntentStateCopyWith(IntentState<T> _, $Res Function(IntentState<T>) __);
}


/// Adds pattern-matching-related methods to [IntentState].
extension IntentStatePatterns<T> on IntentState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _IntentStateInitial<T> value)?  intentinitial,TResult Function( IntentStateLoading<T> value)?  intentloading,TResult Function( IntentStateuccess<T> value)?  intentsuccess,TResult Function( IntentStateFailure<T> value)?  intentfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntentStateInitial() when intentinitial != null:
return intentinitial(_that);case IntentStateLoading() when intentloading != null:
return intentloading(_that);case IntentStateuccess() when intentsuccess != null:
return intentsuccess(_that);case IntentStateFailure() when intentfailure != null:
return intentfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _IntentStateInitial<T> value)  intentinitial,required TResult Function( IntentStateLoading<T> value)  intentloading,required TResult Function( IntentStateuccess<T> value)  intentsuccess,required TResult Function( IntentStateFailure<T> value)  intentfailure,}){
final _that = this;
switch (_that) {
case _IntentStateInitial():
return intentinitial(_that);case IntentStateLoading():
return intentloading(_that);case IntentStateuccess():
return intentsuccess(_that);case IntentStateFailure():
return intentfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _IntentStateInitial<T> value)?  intentinitial,TResult? Function( IntentStateLoading<T> value)?  intentloading,TResult? Function( IntentStateuccess<T> value)?  intentsuccess,TResult? Function( IntentStateFailure<T> value)?  intentfailure,}){
final _that = this;
switch (_that) {
case _IntentStateInitial() when intentinitial != null:
return intentinitial(_that);case IntentStateLoading() when intentloading != null:
return intentloading(_that);case IntentStateuccess() when intentsuccess != null:
return intentsuccess(_that);case IntentStateFailure() when intentfailure != null:
return intentfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  intentinitial,TResult Function()?  intentloading,TResult Function( T data)?  intentsuccess,TResult Function( String error)?  intentfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntentStateInitial() when intentinitial != null:
return intentinitial();case IntentStateLoading() when intentloading != null:
return intentloading();case IntentStateuccess() when intentsuccess != null:
return intentsuccess(_that.data);case IntentStateFailure() when intentfailure != null:
return intentfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  intentinitial,required TResult Function()  intentloading,required TResult Function( T data)  intentsuccess,required TResult Function( String error)  intentfailure,}) {final _that = this;
switch (_that) {
case _IntentStateInitial():
return intentinitial();case IntentStateLoading():
return intentloading();case IntentStateuccess():
return intentsuccess(_that.data);case IntentStateFailure():
return intentfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  intentinitial,TResult? Function()?  intentloading,TResult? Function( T data)?  intentsuccess,TResult? Function( String error)?  intentfailure,}) {final _that = this;
switch (_that) {
case _IntentStateInitial() when intentinitial != null:
return intentinitial();case IntentStateLoading() when intentloading != null:
return intentloading();case IntentStateuccess() when intentsuccess != null:
return intentsuccess(_that.data);case IntentStateFailure() when intentfailure != null:
return intentfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _IntentStateInitial<T> implements IntentState<T> {
  const _IntentStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntentStateInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntentState<$T>.intentinitial()';
}


}




/// @nodoc


class IntentStateLoading<T> implements IntentState<T> {
  const IntentStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntentStateLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntentState<$T>.intentloading()';
}


}




/// @nodoc


class IntentStateuccess<T> implements IntentState<T> {
  const IntentStateuccess(this.data);
  

 final  T data;

/// Create a copy of IntentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntentStateuccessCopyWith<T, IntentStateuccess<T>> get copyWith => _$IntentStateuccessCopyWithImpl<T, IntentStateuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntentStateuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'IntentState<$T>.intentsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $IntentStateuccessCopyWith<T,$Res> implements $IntentStateCopyWith<T, $Res> {
  factory $IntentStateuccessCopyWith(IntentStateuccess<T> value, $Res Function(IntentStateuccess<T>) _then) = _$IntentStateuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$IntentStateuccessCopyWithImpl<T,$Res>
    implements $IntentStateuccessCopyWith<T, $Res> {
  _$IntentStateuccessCopyWithImpl(this._self, this._then);

  final IntentStateuccess<T> _self;
  final $Res Function(IntentStateuccess<T>) _then;

/// Create a copy of IntentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(IntentStateuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class IntentStateFailure<T> implements IntentState<T> {
  const IntentStateFailure({required this.error});
  

 final  String error;

/// Create a copy of IntentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntentStateFailureCopyWith<T, IntentStateFailure<T>> get copyWith => _$IntentStateFailureCopyWithImpl<T, IntentStateFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntentStateFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'IntentState<$T>.intentfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $IntentStateFailureCopyWith<T,$Res> implements $IntentStateCopyWith<T, $Res> {
  factory $IntentStateFailureCopyWith(IntentStateFailure<T> value, $Res Function(IntentStateFailure<T>) _then) = _$IntentStateFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$IntentStateFailureCopyWithImpl<T,$Res>
    implements $IntentStateFailureCopyWith<T, $Res> {
  _$IntentStateFailureCopyWithImpl(this._self, this._then);

  final IntentStateFailure<T> _self;
  final $Res Function(IntentStateFailure<T>) _then;

/// Create a copy of IntentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(IntentStateFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
