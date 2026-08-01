// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progression_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProgressionState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgressionState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProgressionState<$T>()';
}


}

/// @nodoc
class $ProgressionStateCopyWith<T,$Res>  {
$ProgressionStateCopyWith(ProgressionState<T> _, $Res Function(ProgressionState<T>) __);
}


/// Adds pattern-matching-related methods to [ProgressionState].
extension ProgressionStatePatterns<T> on ProgressionState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProgressionStateInitial<T> value)?  progressioninitial,TResult Function( _ProgressionStateLoading<T> value)?  progressionloading,TResult Function( _ProgressionStateSuccess<T> value)?  progressionsuccess,TResult Function( _ProgressionStateFailure<T> value)?  progressionfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProgressionStateInitial() when progressioninitial != null:
return progressioninitial(_that);case _ProgressionStateLoading() when progressionloading != null:
return progressionloading(_that);case _ProgressionStateSuccess() when progressionsuccess != null:
return progressionsuccess(_that);case _ProgressionStateFailure() when progressionfailure != null:
return progressionfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProgressionStateInitial<T> value)  progressioninitial,required TResult Function( _ProgressionStateLoading<T> value)  progressionloading,required TResult Function( _ProgressionStateSuccess<T> value)  progressionsuccess,required TResult Function( _ProgressionStateFailure<T> value)  progressionfailure,}){
final _that = this;
switch (_that) {
case _ProgressionStateInitial():
return progressioninitial(_that);case _ProgressionStateLoading():
return progressionloading(_that);case _ProgressionStateSuccess():
return progressionsuccess(_that);case _ProgressionStateFailure():
return progressionfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProgressionStateInitial<T> value)?  progressioninitial,TResult? Function( _ProgressionStateLoading<T> value)?  progressionloading,TResult? Function( _ProgressionStateSuccess<T> value)?  progressionsuccess,TResult? Function( _ProgressionStateFailure<T> value)?  progressionfailure,}){
final _that = this;
switch (_that) {
case _ProgressionStateInitial() when progressioninitial != null:
return progressioninitial(_that);case _ProgressionStateLoading() when progressionloading != null:
return progressionloading(_that);case _ProgressionStateSuccess() when progressionsuccess != null:
return progressionsuccess(_that);case _ProgressionStateFailure() when progressionfailure != null:
return progressionfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  progressioninitial,TResult Function()?  progressionloading,TResult Function( T data)?  progressionsuccess,TResult Function( String error)?  progressionfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProgressionStateInitial() when progressioninitial != null:
return progressioninitial();case _ProgressionStateLoading() when progressionloading != null:
return progressionloading();case _ProgressionStateSuccess() when progressionsuccess != null:
return progressionsuccess(_that.data);case _ProgressionStateFailure() when progressionfailure != null:
return progressionfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  progressioninitial,required TResult Function()  progressionloading,required TResult Function( T data)  progressionsuccess,required TResult Function( String error)  progressionfailure,}) {final _that = this;
switch (_that) {
case _ProgressionStateInitial():
return progressioninitial();case _ProgressionStateLoading():
return progressionloading();case _ProgressionStateSuccess():
return progressionsuccess(_that.data);case _ProgressionStateFailure():
return progressionfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  progressioninitial,TResult? Function()?  progressionloading,TResult? Function( T data)?  progressionsuccess,TResult? Function( String error)?  progressionfailure,}) {final _that = this;
switch (_that) {
case _ProgressionStateInitial() when progressioninitial != null:
return progressioninitial();case _ProgressionStateLoading() when progressionloading != null:
return progressionloading();case _ProgressionStateSuccess() when progressionsuccess != null:
return progressionsuccess(_that.data);case _ProgressionStateFailure() when progressionfailure != null:
return progressionfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ProgressionStateInitial<T> implements ProgressionState<T> {
  const _ProgressionStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgressionStateInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProgressionState<$T>.progressioninitial()';
}


}




/// @nodoc


class _ProgressionStateLoading<T> implements ProgressionState<T> {
  const _ProgressionStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgressionStateLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProgressionState<$T>.progressionloading()';
}


}




/// @nodoc


class _ProgressionStateSuccess<T> implements ProgressionState<T> {
  const _ProgressionStateSuccess(this.data);
  

 final  T data;

/// Create a copy of ProgressionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgressionStateSuccessCopyWith<T, _ProgressionStateSuccess<T>> get copyWith => __$ProgressionStateSuccessCopyWithImpl<T, _ProgressionStateSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgressionStateSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ProgressionState<$T>.progressionsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProgressionStateSuccessCopyWith<T,$Res> implements $ProgressionStateCopyWith<T, $Res> {
  factory _$ProgressionStateSuccessCopyWith(_ProgressionStateSuccess<T> value, $Res Function(_ProgressionStateSuccess<T>) _then) = __$ProgressionStateSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class __$ProgressionStateSuccessCopyWithImpl<T,$Res>
    implements _$ProgressionStateSuccessCopyWith<T, $Res> {
  __$ProgressionStateSuccessCopyWithImpl(this._self, this._then);

  final _ProgressionStateSuccess<T> _self;
  final $Res Function(_ProgressionStateSuccess<T>) _then;

/// Create a copy of ProgressionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ProgressionStateSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _ProgressionStateFailure<T> implements ProgressionState<T> {
  const _ProgressionStateFailure({required this.error});
  

 final  String error;

/// Create a copy of ProgressionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgressionStateFailureCopyWith<T, _ProgressionStateFailure<T>> get copyWith => __$ProgressionStateFailureCopyWithImpl<T, _ProgressionStateFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgressionStateFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProgressionState<$T>.progressionfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ProgressionStateFailureCopyWith<T,$Res> implements $ProgressionStateCopyWith<T, $Res> {
  factory _$ProgressionStateFailureCopyWith(_ProgressionStateFailure<T> value, $Res Function(_ProgressionStateFailure<T>) _then) = __$ProgressionStateFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ProgressionStateFailureCopyWithImpl<T,$Res>
    implements _$ProgressionStateFailureCopyWith<T, $Res> {
  __$ProgressionStateFailureCopyWithImpl(this._self, this._then);

  final _ProgressionStateFailure<T> _self;
  final $Res Function(_ProgressionStateFailure<T>) _then;

/// Create a copy of ProgressionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ProgressionStateFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
