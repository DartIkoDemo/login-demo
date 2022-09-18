// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() logoutRequested,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String password) signupRequested,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStartedEvent value) appStarted,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignupRequestedEvent value) signupRequested,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;

  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$_AppStartedEventCopyWith<$Res> {
  factory _$$_AppStartedEventCopyWith(
          _$_AppStartedEvent value, $Res Function(_$_AppStartedEvent) then) =
      __$$_AppStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppStartedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_AppStartedEventCopyWith<$Res> {
  __$$_AppStartedEventCopyWithImpl(
      _$_AppStartedEvent _value, $Res Function(_$_AppStartedEvent) _then)
      : super(_value, (v) => _then(v as _$_AppStartedEvent));

  @override
  _$_AppStartedEvent get _value => super._value as _$_AppStartedEvent;
}

/// @nodoc

class _$_AppStartedEvent implements _AppStartedEvent {
  const _$_AppStartedEvent();

  @override
  String toString() {
    return 'AuthenticationEvent.appStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppStartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() logoutRequested,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String password) signupRequested,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStartedEvent value) appStarted,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignupRequestedEvent value) signupRequested,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class _AppStartedEvent implements AuthenticationEvent {
  const factory _AppStartedEvent() = _$_AppStartedEvent;
}

/// @nodoc
abstract class _$$_LogoutRequestedEventCopyWith<$Res> {
  factory _$$_LogoutRequestedEventCopyWith(_$_LogoutRequestedEvent value,
          $Res Function(_$_LogoutRequestedEvent) then) =
      __$$_LogoutRequestedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutRequestedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_LogoutRequestedEventCopyWith<$Res> {
  __$$_LogoutRequestedEventCopyWithImpl(_$_LogoutRequestedEvent _value,
      $Res Function(_$_LogoutRequestedEvent) _then)
      : super(_value, (v) => _then(v as _$_LogoutRequestedEvent));

  @override
  _$_LogoutRequestedEvent get _value => super._value as _$_LogoutRequestedEvent;
}

/// @nodoc

class _$_LogoutRequestedEvent implements _LogoutRequestedEvent {
  const _$_LogoutRequestedEvent();

  @override
  String toString() {
    return 'AuthenticationEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutRequestedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() logoutRequested,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String password) signupRequested,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStartedEvent value) appStarted,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignupRequestedEvent value) signupRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequestedEvent implements AuthenticationEvent {
  const factory _LogoutRequestedEvent() = _$_LogoutRequestedEvent;
}

/// @nodoc
abstract class _$$_LoginRequestedEventCopyWith<$Res> {
  factory _$$_LoginRequestedEventCopyWith(_$_LoginRequestedEvent value,
          $Res Function(_$_LoginRequestedEvent) then) =
      __$$_LoginRequestedEventCopyWithImpl<$Res>;

  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginRequestedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_LoginRequestedEventCopyWith<$Res> {
  __$$_LoginRequestedEventCopyWithImpl(_$_LoginRequestedEvent _value,
      $Res Function(_$_LoginRequestedEvent) _then)
      : super(_value, (v) => _then(v as _$_LoginRequestedEvent));

  @override
  _$_LoginRequestedEvent get _value => super._value as _$_LoginRequestedEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginRequestedEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginRequestedEvent implements _LoginRequestedEvent {
  const _$_LoginRequestedEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.loginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequestedEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginRequestedEventCopyWith<_$_LoginRequestedEvent> get copyWith =>
      __$$_LoginRequestedEventCopyWithImpl<_$_LoginRequestedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() logoutRequested,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String password) signupRequested,
  }) {
    return loginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
  }) {
    return loginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStartedEvent value) appStarted,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignupRequestedEvent value) signupRequested,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class _LoginRequestedEvent implements AuthenticationEvent {
  const factory _LoginRequestedEvent(
      {required final String email,
      required final String password}) = _$_LoginRequestedEvent;

  String get email;

  String get password;

  @JsonKey(ignore: true)
  _$$_LoginRequestedEventCopyWith<_$_LoginRequestedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignupRequestedEventCopyWith<$Res> {
  factory _$$_SignupRequestedEventCopyWith(_$_SignupRequestedEvent value,
          $Res Function(_$_SignupRequestedEvent) then) =
      __$$_SignupRequestedEventCopyWithImpl<$Res>;

  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignupRequestedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_SignupRequestedEventCopyWith<$Res> {
  __$$_SignupRequestedEventCopyWithImpl(_$_SignupRequestedEvent _value,
      $Res Function(_$_SignupRequestedEvent) _then)
      : super(_value, (v) => _then(v as _$_SignupRequestedEvent));

  @override
  _$_SignupRequestedEvent get _value => super._value as _$_SignupRequestedEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignupRequestedEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupRequestedEvent implements _SignupRequestedEvent {
  const _$_SignupRequestedEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signupRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupRequestedEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_SignupRequestedEventCopyWith<_$_SignupRequestedEvent> get copyWith =>
      __$$_SignupRequestedEventCopyWithImpl<_$_SignupRequestedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() logoutRequested,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String password) signupRequested,
  }) {
    return signupRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
  }) {
    return signupRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? logoutRequested,
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String password)? signupRequested,
    required TResult orElse(),
  }) {
    if (signupRequested != null) {
      return signupRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStartedEvent value) appStarted,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignupRequestedEvent value) signupRequested,
  }) {
    return signupRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
  }) {
    return signupRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStartedEvent value)? appStarted,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignupRequestedEvent value)? signupRequested,
    required TResult orElse(),
  }) {
    if (signupRequested != null) {
      return signupRequested(this);
    }
    return orElse();
  }
}

abstract class _SignupRequestedEvent implements AuthenticationEvent {
  const factory _SignupRequestedEvent(
      {required final String email,
      required final String password}) = _$_SignupRequestedEvent;

  String get email;

  String get password;

  @JsonKey(ignore: true)
  _$$_SignupRequestedEventCopyWith<_$_SignupRequestedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  bool get isLoggedIn => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoggedIn) initial,
    required TResult Function(bool isLoggedIn) ready,
    required TResult Function(bool isLoggedIn) loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoggedIn)? initial,
    TResult Function(bool isLoggedIn)? ready,
    TResult Function(bool isLoggedIn)? loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoggedIn)? initial,
    TResult Function(bool isLoggedIn)? ready,
    TResult Function(bool isLoggedIn)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_ReadyAuthenticationState value) ready,
    required TResult Function(_LoadingAuthenticationState value) loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_ReadyAuthenticationState value)? ready,
    TResult Function(_LoadingAuthenticationState value)? loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_ReadyAuthenticationState value)? ready,
    TResult Function(_LoadingAuthenticationState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;

  $Res call({bool isLoggedIn});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;

  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? isLoggedIn = freezed,
  }) {
    return _then(_value.copyWith(
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialAuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_InitialAuthenticationStateCopyWith(
          _$_InitialAuthenticationState value,
          $Res Function(_$_InitialAuthenticationState) then) =
      __$$_InitialAuthenticationStateCopyWithImpl<$Res>;

  @override
  $Res call({bool isLoggedIn});
}

/// @nodoc
class __$$_InitialAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_InitialAuthenticationStateCopyWith<$Res> {
  __$$_InitialAuthenticationStateCopyWithImpl(
      _$_InitialAuthenticationState _value,
      $Res Function(_$_InitialAuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_InitialAuthenticationState));

  @override
  _$_InitialAuthenticationState get _value =>
      super._value as _$_InitialAuthenticationState;

  @override
  $Res call({
    Object? isLoggedIn = freezed,
  }) {
    return _then(_$_InitialAuthenticationState(
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitialAuthenticationState implements _InitialAuthenticationState {
  const _$_InitialAuthenticationState({required this.isLoggedIn});

  @override
  final bool isLoggedIn;

  @override
  String toString() {
    return 'AuthenticationState.initial(isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialAuthenticationState &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoggedIn));

  @JsonKey(ignore: true)
  @override
  _$$_InitialAuthenticationStateCopyWith<_$_InitialAuthenticationState>
      get copyWith => __$$_InitialAuthenticationStateCopyWithImpl<
          _$_InitialAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoggedIn) initial,
    required TResult Function(bool isLoggedIn) ready,
    required TResult Function(bool isLoggedIn) loading,
  }) {
    return initial(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoggedIn)? initial,
    TResult Function(bool isLoggedIn)? ready,
    TResult Function(bool isLoggedIn)? loading,
  }) {
    return initial?.call(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoggedIn)? initial,
    TResult Function(bool isLoggedIn)? ready,
    TResult Function(bool isLoggedIn)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_ReadyAuthenticationState value) ready,
    required TResult Function(_LoadingAuthenticationState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_ReadyAuthenticationState value)? ready,
    TResult Function(_LoadingAuthenticationState value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_ReadyAuthenticationState value)? ready,
    TResult Function(_LoadingAuthenticationState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAuthenticationState implements AuthenticationState {
  const factory _InitialAuthenticationState({required final bool isLoggedIn}) =
      _$_InitialAuthenticationState;

  @override
  bool get isLoggedIn;

  @override
  @JsonKey(ignore: true)
  _$$_InitialAuthenticationStateCopyWith<_$_InitialAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadyAuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_ReadyAuthenticationStateCopyWith(
          _$_ReadyAuthenticationState value,
          $Res Function(_$_ReadyAuthenticationState) then) =
      __$$_ReadyAuthenticationStateCopyWithImpl<$Res>;

  @override
  $Res call({bool isLoggedIn});
}

/// @nodoc
class __$$_ReadyAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_ReadyAuthenticationStateCopyWith<$Res> {
  __$$_ReadyAuthenticationStateCopyWithImpl(_$_ReadyAuthenticationState _value,
      $Res Function(_$_ReadyAuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_ReadyAuthenticationState));

  @override
  _$_ReadyAuthenticationState get _value =>
      super._value as _$_ReadyAuthenticationState;

  @override
  $Res call({
    Object? isLoggedIn = freezed,
  }) {
    return _then(_$_ReadyAuthenticationState(
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReadyAuthenticationState implements _ReadyAuthenticationState {
  const _$_ReadyAuthenticationState({required this.isLoggedIn});

  @override
  final bool isLoggedIn;

  @override
  String toString() {
    return 'AuthenticationState.ready(isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadyAuthenticationState &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoggedIn));

  @JsonKey(ignore: true)
  @override
  _$$_ReadyAuthenticationStateCopyWith<_$_ReadyAuthenticationState>
      get copyWith => __$$_ReadyAuthenticationStateCopyWithImpl<
          _$_ReadyAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoggedIn) initial,
    required TResult Function(bool isLoggedIn) ready,
    required TResult Function(bool isLoggedIn) loading,
  }) {
    return ready(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoggedIn)? initial,
    TResult Function(bool isLoggedIn)? ready,
    TResult Function(bool isLoggedIn)? loading,
  }) {
    return ready?.call(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoggedIn)? initial,
    TResult Function(bool isLoggedIn)? ready,
    TResult Function(bool isLoggedIn)? loading,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(isLoggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_ReadyAuthenticationState value) ready,
    required TResult Function(_LoadingAuthenticationState value) loading,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_ReadyAuthenticationState value)? ready,
    TResult Function(_LoadingAuthenticationState value)? loading,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_ReadyAuthenticationState value)? ready,
    TResult Function(_LoadingAuthenticationState value)? loading,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _ReadyAuthenticationState implements AuthenticationState {
  const factory _ReadyAuthenticationState({required final bool isLoggedIn}) =
      _$_ReadyAuthenticationState;

  @override
  bool get isLoggedIn;

  @override
  @JsonKey(ignore: true)
  _$$_ReadyAuthenticationStateCopyWith<_$_ReadyAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingAuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_LoadingAuthenticationStateCopyWith(
          _$_LoadingAuthenticationState value,
          $Res Function(_$_LoadingAuthenticationState) then) =
      __$$_LoadingAuthenticationStateCopyWithImpl<$Res>;

  @override
  $Res call({bool isLoggedIn});
}

/// @nodoc
class __$$_LoadingAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_LoadingAuthenticationStateCopyWith<$Res> {
  __$$_LoadingAuthenticationStateCopyWithImpl(
      _$_LoadingAuthenticationState _value,
      $Res Function(_$_LoadingAuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_LoadingAuthenticationState));

  @override
  _$_LoadingAuthenticationState get _value =>
      super._value as _$_LoadingAuthenticationState;

  @override
  $Res call({
    Object? isLoggedIn = freezed,
  }) {
    return _then(_$_LoadingAuthenticationState(
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadingAuthenticationState implements _LoadingAuthenticationState {
  const _$_LoadingAuthenticationState({required this.isLoggedIn});

  @override
  final bool isLoggedIn;

  @override
  String toString() {
    return 'AuthenticationState.loading(isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingAuthenticationState &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoggedIn));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingAuthenticationStateCopyWith<_$_LoadingAuthenticationState>
      get copyWith => __$$_LoadingAuthenticationStateCopyWithImpl<
          _$_LoadingAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoggedIn) initial,
    required TResult Function(bool isLoggedIn) ready,
    required TResult Function(bool isLoggedIn) loading,
  }) {
    return loading(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoggedIn)? initial,
    TResult Function(bool isLoggedIn)? ready,
    TResult Function(bool isLoggedIn)? loading,
  }) {
    return loading?.call(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoggedIn)? initial,
    TResult Function(bool isLoggedIn)? ready,
    TResult Function(bool isLoggedIn)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLoggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_ReadyAuthenticationState value) ready,
    required TResult Function(_LoadingAuthenticationState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_ReadyAuthenticationState value)? ready,
    TResult Function(_LoadingAuthenticationState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_ReadyAuthenticationState value)? ready,
    TResult Function(_LoadingAuthenticationState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingAuthenticationState implements AuthenticationState {
  const factory _LoadingAuthenticationState({required final bool isLoggedIn}) =
      _$_LoadingAuthenticationState;

  @override
  bool get isLoggedIn;

  @override
  @JsonKey(ignore: true)
  _$$_LoadingAuthenticationStateCopyWith<_$_LoadingAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}
