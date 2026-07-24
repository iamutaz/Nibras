// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>()';
}


}

/// @nodoc
class $HomeStateCopyWith<T,$Res>  {
$HomeStateCopyWith(HomeState<T> _, $Res Function(HomeState<T>) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns<T> on HomeState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HomeInitial<T> value)?  initial,TResult Function( HomeLoading<T> value)?  homeloading,TResult Function( HomeSuccess<T> value)?  homesuccess,TResult Function( HomeFailure<T> value)?  homefailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial(_that);case HomeLoading() when homeloading != null:
return homeloading(_that);case HomeSuccess() when homesuccess != null:
return homesuccess(_that);case HomeFailure() when homefailure != null:
return homefailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HomeInitial<T> value)  initial,required TResult Function( HomeLoading<T> value)  homeloading,required TResult Function( HomeSuccess<T> value)  homesuccess,required TResult Function( HomeFailure<T> value)  homefailure,}){
final _that = this;
switch (_that) {
case _HomeInitial():
return initial(_that);case HomeLoading():
return homeloading(_that);case HomeSuccess():
return homesuccess(_that);case HomeFailure():
return homefailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HomeInitial<T> value)?  initial,TResult? Function( HomeLoading<T> value)?  homeloading,TResult? Function( HomeSuccess<T> value)?  homesuccess,TResult? Function( HomeFailure<T> value)?  homefailure,}){
final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial(_that);case HomeLoading() when homeloading != null:
return homeloading(_that);case HomeSuccess() when homesuccess != null:
return homesuccess(_that);case HomeFailure() when homefailure != null:
return homefailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  homeloading,TResult Function( T data)?  homesuccess,TResult Function( String error)?  homefailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial();case HomeLoading() when homeloading != null:
return homeloading();case HomeSuccess() when homesuccess != null:
return homesuccess(_that.data);case HomeFailure() when homefailure != null:
return homefailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  homeloading,required TResult Function( T data)  homesuccess,required TResult Function( String error)  homefailure,}) {final _that = this;
switch (_that) {
case _HomeInitial():
return initial();case HomeLoading():
return homeloading();case HomeSuccess():
return homesuccess(_that.data);case HomeFailure():
return homefailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  homeloading,TResult? Function( T data)?  homesuccess,TResult? Function( String error)?  homefailure,}) {final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial();case HomeLoading() when homeloading != null:
return homeloading();case HomeSuccess() when homesuccess != null:
return homesuccess(_that.data);case HomeFailure() when homefailure != null:
return homefailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _HomeInitial<T> implements HomeState<T> {
  const _HomeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.initial()';
}


}




/// @nodoc


class HomeLoading<T> implements HomeState<T> {
  const HomeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.homeloading()';
}


}




/// @nodoc


class HomeSuccess<T> implements HomeState<T> {
  const HomeSuccess(this.data);
  

 final  T data;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSuccessCopyWith<T, HomeSuccess<T>> get copyWith => _$HomeSuccessCopyWithImpl<T, HomeSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'HomeState<$T>.homesuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $HomeSuccessCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $HomeSuccessCopyWith(HomeSuccess<T> value, $Res Function(HomeSuccess<T>) _then) = _$HomeSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$HomeSuccessCopyWithImpl<T,$Res>
    implements $HomeSuccessCopyWith<T, $Res> {
  _$HomeSuccessCopyWithImpl(this._self, this._then);

  final HomeSuccess<T> _self;
  final $Res Function(HomeSuccess<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(HomeSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class HomeFailure<T> implements HomeState<T> {
  const HomeFailure({required this.error});
  

 final  String error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFailureCopyWith<T, HomeFailure<T>> get copyWith => _$HomeFailureCopyWithImpl<T, HomeFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeState<$T>.homefailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $HomeFailureCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $HomeFailureCopyWith(HomeFailure<T> value, $Res Function(HomeFailure<T>) _then) = _$HomeFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$HomeFailureCopyWithImpl<T,$Res>
    implements $HomeFailureCopyWith<T, $Res> {
  _$HomeFailureCopyWithImpl(this._self, this._then);

  final HomeFailure<T> _self;
  final $Res Function(HomeFailure<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(HomeFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
