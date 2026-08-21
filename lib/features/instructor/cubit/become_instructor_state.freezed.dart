// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'become_instructor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BecomeInstructorState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BecomeInstructorState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BecomeInstructorState<$T>()';
}


}

/// @nodoc
class $BecomeInstructorStateCopyWith<T,$Res>  {
$BecomeInstructorStateCopyWith(BecomeInstructorState<T> _, $Res Function(BecomeInstructorState<T>) __);
}


/// Adds pattern-matching-related methods to [BecomeInstructorState].
extension BecomeInstructorStatePatterns<T> on BecomeInstructorState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _BecomeInstructorStateInitial<T> value)?  becomeinstructorinitial,TResult Function( BecomeInstructorStateLoading<T> value)?  becomeinstructorloading,TResult Function( BecomeInstructorStateSuccess<T> value)?  becomeinstructorsuccess,TResult Function( BecomeInstructorStateFailure<T> value)?  becomeinstructorfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BecomeInstructorStateInitial() when becomeinstructorinitial != null:
return becomeinstructorinitial(_that);case BecomeInstructorStateLoading() when becomeinstructorloading != null:
return becomeinstructorloading(_that);case BecomeInstructorStateSuccess() when becomeinstructorsuccess != null:
return becomeinstructorsuccess(_that);case BecomeInstructorStateFailure() when becomeinstructorfailure != null:
return becomeinstructorfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _BecomeInstructorStateInitial<T> value)  becomeinstructorinitial,required TResult Function( BecomeInstructorStateLoading<T> value)  becomeinstructorloading,required TResult Function( BecomeInstructorStateSuccess<T> value)  becomeinstructorsuccess,required TResult Function( BecomeInstructorStateFailure<T> value)  becomeinstructorfailure,}){
final _that = this;
switch (_that) {
case _BecomeInstructorStateInitial():
return becomeinstructorinitial(_that);case BecomeInstructorStateLoading():
return becomeinstructorloading(_that);case BecomeInstructorStateSuccess():
return becomeinstructorsuccess(_that);case BecomeInstructorStateFailure():
return becomeinstructorfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _BecomeInstructorStateInitial<T> value)?  becomeinstructorinitial,TResult? Function( BecomeInstructorStateLoading<T> value)?  becomeinstructorloading,TResult? Function( BecomeInstructorStateSuccess<T> value)?  becomeinstructorsuccess,TResult? Function( BecomeInstructorStateFailure<T> value)?  becomeinstructorfailure,}){
final _that = this;
switch (_that) {
case _BecomeInstructorStateInitial() when becomeinstructorinitial != null:
return becomeinstructorinitial(_that);case BecomeInstructorStateLoading() when becomeinstructorloading != null:
return becomeinstructorloading(_that);case BecomeInstructorStateSuccess() when becomeinstructorsuccess != null:
return becomeinstructorsuccess(_that);case BecomeInstructorStateFailure() when becomeinstructorfailure != null:
return becomeinstructorfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  becomeinstructorinitial,TResult Function()?  becomeinstructorloading,TResult Function( T data)?  becomeinstructorsuccess,TResult Function( String error)?  becomeinstructorfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BecomeInstructorStateInitial() when becomeinstructorinitial != null:
return becomeinstructorinitial();case BecomeInstructorStateLoading() when becomeinstructorloading != null:
return becomeinstructorloading();case BecomeInstructorStateSuccess() when becomeinstructorsuccess != null:
return becomeinstructorsuccess(_that.data);case BecomeInstructorStateFailure() when becomeinstructorfailure != null:
return becomeinstructorfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  becomeinstructorinitial,required TResult Function()  becomeinstructorloading,required TResult Function( T data)  becomeinstructorsuccess,required TResult Function( String error)  becomeinstructorfailure,}) {final _that = this;
switch (_that) {
case _BecomeInstructorStateInitial():
return becomeinstructorinitial();case BecomeInstructorStateLoading():
return becomeinstructorloading();case BecomeInstructorStateSuccess():
return becomeinstructorsuccess(_that.data);case BecomeInstructorStateFailure():
return becomeinstructorfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  becomeinstructorinitial,TResult? Function()?  becomeinstructorloading,TResult? Function( T data)?  becomeinstructorsuccess,TResult? Function( String error)?  becomeinstructorfailure,}) {final _that = this;
switch (_that) {
case _BecomeInstructorStateInitial() when becomeinstructorinitial != null:
return becomeinstructorinitial();case BecomeInstructorStateLoading() when becomeinstructorloading != null:
return becomeinstructorloading();case BecomeInstructorStateSuccess() when becomeinstructorsuccess != null:
return becomeinstructorsuccess(_that.data);case BecomeInstructorStateFailure() when becomeinstructorfailure != null:
return becomeinstructorfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _BecomeInstructorStateInitial<T> implements BecomeInstructorState<T> {
  const _BecomeInstructorStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BecomeInstructorStateInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BecomeInstructorState<$T>.becomeinstructorinitial()';
}


}




/// @nodoc


class BecomeInstructorStateLoading<T> implements BecomeInstructorState<T> {
  const BecomeInstructorStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BecomeInstructorStateLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BecomeInstructorState<$T>.becomeinstructorloading()';
}


}




/// @nodoc


class BecomeInstructorStateSuccess<T> implements BecomeInstructorState<T> {
  const BecomeInstructorStateSuccess(this.data);
  

 final  T data;

/// Create a copy of BecomeInstructorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BecomeInstructorStateSuccessCopyWith<T, BecomeInstructorStateSuccess<T>> get copyWith => _$BecomeInstructorStateSuccessCopyWithImpl<T, BecomeInstructorStateSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BecomeInstructorStateSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BecomeInstructorState<$T>.becomeinstructorsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $BecomeInstructorStateSuccessCopyWith<T,$Res> implements $BecomeInstructorStateCopyWith<T, $Res> {
  factory $BecomeInstructorStateSuccessCopyWith(BecomeInstructorStateSuccess<T> value, $Res Function(BecomeInstructorStateSuccess<T>) _then) = _$BecomeInstructorStateSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$BecomeInstructorStateSuccessCopyWithImpl<T,$Res>
    implements $BecomeInstructorStateSuccessCopyWith<T, $Res> {
  _$BecomeInstructorStateSuccessCopyWithImpl(this._self, this._then);

  final BecomeInstructorStateSuccess<T> _self;
  final $Res Function(BecomeInstructorStateSuccess<T>) _then;

/// Create a copy of BecomeInstructorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(BecomeInstructorStateSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class BecomeInstructorStateFailure<T> implements BecomeInstructorState<T> {
  const BecomeInstructorStateFailure({required this.error});
  

 final  String error;

/// Create a copy of BecomeInstructorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BecomeInstructorStateFailureCopyWith<T, BecomeInstructorStateFailure<T>> get copyWith => _$BecomeInstructorStateFailureCopyWithImpl<T, BecomeInstructorStateFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BecomeInstructorStateFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'BecomeInstructorState<$T>.becomeinstructorfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $BecomeInstructorStateFailureCopyWith<T,$Res> implements $BecomeInstructorStateCopyWith<T, $Res> {
  factory $BecomeInstructorStateFailureCopyWith(BecomeInstructorStateFailure<T> value, $Res Function(BecomeInstructorStateFailure<T>) _then) = _$BecomeInstructorStateFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$BecomeInstructorStateFailureCopyWithImpl<T,$Res>
    implements $BecomeInstructorStateFailureCopyWith<T, $Res> {
  _$BecomeInstructorStateFailureCopyWithImpl(this._self, this._then);

  final BecomeInstructorStateFailure<T> _self;
  final $Res Function(BecomeInstructorStateFailure<T>) _then;

/// Create a copy of BecomeInstructorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(BecomeInstructorStateFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
