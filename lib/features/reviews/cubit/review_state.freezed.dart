// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReviewState<$T>()';
}


}

/// @nodoc
class $ReviewStateCopyWith<T,$Res>  {
$ReviewStateCopyWith(ReviewState<T> _, $Res Function(ReviewState<T>) __);
}


/// Adds pattern-matching-related methods to [ReviewState].
extension ReviewStatePatterns<T> on ReviewState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ReviewInitial<T> value)?  initial,TResult Function( ReviewLoading<T> value)?  reviewloading,TResult Function( ReviewSuccess<T> value)?  reviewsuccess,TResult Function( ReviewFailure<T> value)?  reviewfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewInitial() when initial != null:
return initial(_that);case ReviewLoading() when reviewloading != null:
return reviewloading(_that);case ReviewSuccess() when reviewsuccess != null:
return reviewsuccess(_that);case ReviewFailure() when reviewfailure != null:
return reviewfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ReviewInitial<T> value)  initial,required TResult Function( ReviewLoading<T> value)  reviewloading,required TResult Function( ReviewSuccess<T> value)  reviewsuccess,required TResult Function( ReviewFailure<T> value)  reviewfailure,}){
final _that = this;
switch (_that) {
case _ReviewInitial():
return initial(_that);case ReviewLoading():
return reviewloading(_that);case ReviewSuccess():
return reviewsuccess(_that);case ReviewFailure():
return reviewfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ReviewInitial<T> value)?  initial,TResult? Function( ReviewLoading<T> value)?  reviewloading,TResult? Function( ReviewSuccess<T> value)?  reviewsuccess,TResult? Function( ReviewFailure<T> value)?  reviewfailure,}){
final _that = this;
switch (_that) {
case _ReviewInitial() when initial != null:
return initial(_that);case ReviewLoading() when reviewloading != null:
return reviewloading(_that);case ReviewSuccess() when reviewsuccess != null:
return reviewsuccess(_that);case ReviewFailure() when reviewfailure != null:
return reviewfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  reviewloading,TResult Function( T data)?  reviewsuccess,TResult Function( String error)?  reviewfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewInitial() when initial != null:
return initial();case ReviewLoading() when reviewloading != null:
return reviewloading();case ReviewSuccess() when reviewsuccess != null:
return reviewsuccess(_that.data);case ReviewFailure() when reviewfailure != null:
return reviewfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  reviewloading,required TResult Function( T data)  reviewsuccess,required TResult Function( String error)  reviewfailure,}) {final _that = this;
switch (_that) {
case _ReviewInitial():
return initial();case ReviewLoading():
return reviewloading();case ReviewSuccess():
return reviewsuccess(_that.data);case ReviewFailure():
return reviewfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  reviewloading,TResult? Function( T data)?  reviewsuccess,TResult? Function( String error)?  reviewfailure,}) {final _that = this;
switch (_that) {
case _ReviewInitial() when initial != null:
return initial();case ReviewLoading() when reviewloading != null:
return reviewloading();case ReviewSuccess() when reviewsuccess != null:
return reviewsuccess(_that.data);case ReviewFailure() when reviewfailure != null:
return reviewfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewInitial<T> implements ReviewState<T> {
  const _ReviewInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReviewState<$T>.initial()';
}


}




/// @nodoc


class ReviewLoading<T> implements ReviewState<T> {
  const ReviewLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReviewState<$T>.reviewloading()';
}


}




/// @nodoc


class ReviewSuccess<T> implements ReviewState<T> {
  const ReviewSuccess(this.data);
  

 final  T data;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewSuccessCopyWith<T, ReviewSuccess<T>> get copyWith => _$ReviewSuccessCopyWithImpl<T, ReviewSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ReviewState<$T>.reviewsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ReviewSuccessCopyWith<T,$Res> implements $ReviewStateCopyWith<T, $Res> {
  factory $ReviewSuccessCopyWith(ReviewSuccess<T> value, $Res Function(ReviewSuccess<T>) _then) = _$ReviewSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ReviewSuccessCopyWithImpl<T,$Res>
    implements $ReviewSuccessCopyWith<T, $Res> {
  _$ReviewSuccessCopyWithImpl(this._self, this._then);

  final ReviewSuccess<T> _self;
  final $Res Function(ReviewSuccess<T>) _then;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ReviewSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ReviewFailure<T> implements ReviewState<T> {
  const ReviewFailure({required this.error});
  

 final  String error;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewFailureCopyWith<T, ReviewFailure<T>> get copyWith => _$ReviewFailureCopyWithImpl<T, ReviewFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ReviewState<$T>.reviewfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ReviewFailureCopyWith<T,$Res> implements $ReviewStateCopyWith<T, $Res> {
  factory $ReviewFailureCopyWith(ReviewFailure<T> value, $Res Function(ReviewFailure<T>) _then) = _$ReviewFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ReviewFailureCopyWithImpl<T,$Res>
    implements $ReviewFailureCopyWith<T, $Res> {
  _$ReviewFailureCopyWithImpl(this._self, this._then);

  final ReviewFailure<T> _self;
  final $Res Function(ReviewFailure<T>) _then;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ReviewFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
