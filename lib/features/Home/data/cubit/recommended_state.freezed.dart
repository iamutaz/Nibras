// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecommendedState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecommendedState<$T>()';
}


}

/// @nodoc
class $RecommendedStateCopyWith<T,$Res>  {
$RecommendedStateCopyWith(RecommendedState<T> _, $Res Function(RecommendedState<T>) __);
}


/// Adds pattern-matching-related methods to [RecommendedState].
extension RecommendedStatePatterns<T> on RecommendedState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( RecommendedLoading<T> value)?  recommendedloading,TResult Function( RecommendedSuccess<T> value)?  recommendedsuccess,TResult Function( RecommendedFailure<T> value)?  recommendedfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case RecommendedLoading() when recommendedloading != null:
return recommendedloading(_that);case RecommendedSuccess() when recommendedsuccess != null:
return recommendedsuccess(_that);case RecommendedFailure() when recommendedfailure != null:
return recommendedfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( RecommendedLoading<T> value)  recommendedloading,required TResult Function( RecommendedSuccess<T> value)  recommendedsuccess,required TResult Function( RecommendedFailure<T> value)  recommendedfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case RecommendedLoading():
return recommendedloading(_that);case RecommendedSuccess():
return recommendedsuccess(_that);case RecommendedFailure():
return recommendedfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( RecommendedLoading<T> value)?  recommendedloading,TResult? Function( RecommendedSuccess<T> value)?  recommendedsuccess,TResult? Function( RecommendedFailure<T> value)?  recommendedfailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case RecommendedLoading() when recommendedloading != null:
return recommendedloading(_that);case RecommendedSuccess() when recommendedsuccess != null:
return recommendedsuccess(_that);case RecommendedFailure() when recommendedfailure != null:
return recommendedfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  recommendedloading,TResult Function( T data)?  recommendedsuccess,TResult Function( String error)?  recommendedfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case RecommendedLoading() when recommendedloading != null:
return recommendedloading();case RecommendedSuccess() when recommendedsuccess != null:
return recommendedsuccess(_that.data);case RecommendedFailure() when recommendedfailure != null:
return recommendedfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  recommendedloading,required TResult Function( T data)  recommendedsuccess,required TResult Function( String error)  recommendedfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case RecommendedLoading():
return recommendedloading();case RecommendedSuccess():
return recommendedsuccess(_that.data);case RecommendedFailure():
return recommendedfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  recommendedloading,TResult? Function( T data)?  recommendedsuccess,TResult? Function( String error)?  recommendedfailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case RecommendedLoading() when recommendedloading != null:
return recommendedloading();case RecommendedSuccess() when recommendedsuccess != null:
return recommendedsuccess(_that.data);case RecommendedFailure() when recommendedfailure != null:
return recommendedfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements RecommendedState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecommendedState<$T>.initial()';
}


}




/// @nodoc


class RecommendedLoading<T> implements RecommendedState<T> {
  const RecommendedLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecommendedState<$T>.recommendedloading()';
}


}




/// @nodoc


class RecommendedSuccess<T> implements RecommendedState<T> {
  const RecommendedSuccess(this.data);
  

 final  T data;

/// Create a copy of RecommendedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedSuccessCopyWith<T, RecommendedSuccess<T>> get copyWith => _$RecommendedSuccessCopyWithImpl<T, RecommendedSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'RecommendedState<$T>.recommendedsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $RecommendedSuccessCopyWith<T,$Res> implements $RecommendedStateCopyWith<T, $Res> {
  factory $RecommendedSuccessCopyWith(RecommendedSuccess<T> value, $Res Function(RecommendedSuccess<T>) _then) = _$RecommendedSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$RecommendedSuccessCopyWithImpl<T,$Res>
    implements $RecommendedSuccessCopyWith<T, $Res> {
  _$RecommendedSuccessCopyWithImpl(this._self, this._then);

  final RecommendedSuccess<T> _self;
  final $Res Function(RecommendedSuccess<T>) _then;

/// Create a copy of RecommendedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(RecommendedSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class RecommendedFailure<T> implements RecommendedState<T> {
  const RecommendedFailure({required this.error});
  

 final  String error;

/// Create a copy of RecommendedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedFailureCopyWith<T, RecommendedFailure<T>> get copyWith => _$RecommendedFailureCopyWithImpl<T, RecommendedFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'RecommendedState<$T>.recommendedfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $RecommendedFailureCopyWith<T,$Res> implements $RecommendedStateCopyWith<T, $Res> {
  factory $RecommendedFailureCopyWith(RecommendedFailure<T> value, $Res Function(RecommendedFailure<T>) _then) = _$RecommendedFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$RecommendedFailureCopyWithImpl<T,$Res>
    implements $RecommendedFailureCopyWith<T, $Res> {
  _$RecommendedFailureCopyWithImpl(this._self, this._then);

  final RecommendedFailure<T> _self;
  final $Res Function(RecommendedFailure<T>) _then;

/// Create a copy of RecommendedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(RecommendedFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
