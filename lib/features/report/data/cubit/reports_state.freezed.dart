// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState<$T>()';
}


}

/// @nodoc
class $ReportsStateCopyWith<T,$Res>  {
$ReportsStateCopyWith(ReportsState<T> _, $Res Function(ReportsState<T>) __);
}


/// Adds pattern-matching-related methods to [ReportsState].
extension ReportsStatePatterns<T> on ReportsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  reportsinitial,TResult Function( ReportsLoading<T> value)?  reportsloading,TResult Function( ReportsSuccess<T> value)?  reportssuccess,TResult Function( ReportsFailure<T> value)?  reportsfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when reportsinitial != null:
return reportsinitial(_that);case ReportsLoading() when reportsloading != null:
return reportsloading(_that);case ReportsSuccess() when reportssuccess != null:
return reportssuccess(_that);case ReportsFailure() when reportsfailure != null:
return reportsfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  reportsinitial,required TResult Function( ReportsLoading<T> value)  reportsloading,required TResult Function( ReportsSuccess<T> value)  reportssuccess,required TResult Function( ReportsFailure<T> value)  reportsfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return reportsinitial(_that);case ReportsLoading():
return reportsloading(_that);case ReportsSuccess():
return reportssuccess(_that);case ReportsFailure():
return reportsfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  reportsinitial,TResult? Function( ReportsLoading<T> value)?  reportsloading,TResult? Function( ReportsSuccess<T> value)?  reportssuccess,TResult? Function( ReportsFailure<T> value)?  reportsfailure,}){
final _that = this;
switch (_that) {
case _Initial() when reportsinitial != null:
return reportsinitial(_that);case ReportsLoading() when reportsloading != null:
return reportsloading(_that);case ReportsSuccess() when reportssuccess != null:
return reportssuccess(_that);case ReportsFailure() when reportsfailure != null:
return reportsfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  reportsinitial,TResult Function()?  reportsloading,TResult Function( T data)?  reportssuccess,TResult Function( String error)?  reportsfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when reportsinitial != null:
return reportsinitial();case ReportsLoading() when reportsloading != null:
return reportsloading();case ReportsSuccess() when reportssuccess != null:
return reportssuccess(_that.data);case ReportsFailure() when reportsfailure != null:
return reportsfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  reportsinitial,required TResult Function()  reportsloading,required TResult Function( T data)  reportssuccess,required TResult Function( String error)  reportsfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return reportsinitial();case ReportsLoading():
return reportsloading();case ReportsSuccess():
return reportssuccess(_that.data);case ReportsFailure():
return reportsfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  reportsinitial,TResult? Function()?  reportsloading,TResult? Function( T data)?  reportssuccess,TResult? Function( String error)?  reportsfailure,}) {final _that = this;
switch (_that) {
case _Initial() when reportsinitial != null:
return reportsinitial();case ReportsLoading() when reportsloading != null:
return reportsloading();case ReportsSuccess() when reportssuccess != null:
return reportssuccess(_that.data);case ReportsFailure() when reportsfailure != null:
return reportsfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements ReportsState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState<$T>.reportsinitial()';
}


}




/// @nodoc


class ReportsLoading<T> implements ReportsState<T> {
  const ReportsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState<$T>.reportsloading()';
}


}




/// @nodoc


class ReportsSuccess<T> implements ReportsState<T> {
  const ReportsSuccess(this.data);
  

 final  T data;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportsSuccessCopyWith<T, ReportsSuccess<T>> get copyWith => _$ReportsSuccessCopyWithImpl<T, ReportsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ReportsState<$T>.reportssuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ReportsSuccessCopyWith<T,$Res> implements $ReportsStateCopyWith<T, $Res> {
  factory $ReportsSuccessCopyWith(ReportsSuccess<T> value, $Res Function(ReportsSuccess<T>) _then) = _$ReportsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ReportsSuccessCopyWithImpl<T,$Res>
    implements $ReportsSuccessCopyWith<T, $Res> {
  _$ReportsSuccessCopyWithImpl(this._self, this._then);

  final ReportsSuccess<T> _self;
  final $Res Function(ReportsSuccess<T>) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ReportsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ReportsFailure<T> implements ReportsState<T> {
  const ReportsFailure({required this.error});
  

 final  String error;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportsFailureCopyWith<T, ReportsFailure<T>> get copyWith => _$ReportsFailureCopyWithImpl<T, ReportsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ReportsState<$T>.reportsfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ReportsFailureCopyWith<T,$Res> implements $ReportsStateCopyWith<T, $Res> {
  factory $ReportsFailureCopyWith(ReportsFailure<T> value, $Res Function(ReportsFailure<T>) _then) = _$ReportsFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ReportsFailureCopyWithImpl<T,$Res>
    implements $ReportsFailureCopyWith<T, $Res> {
  _$ReportsFailureCopyWithImpl(this._self, this._then);

  final ReportsFailure<T> _self;
  final $Res Function(ReportsFailure<T>) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ReportsFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
