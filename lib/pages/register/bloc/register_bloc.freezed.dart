// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(UserType type) userTypeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String repeatPassword) repeatPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(UserType type)? userTypeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String repeatPassword)? repeatPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(UserType type)? userTypeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String repeatPassword)? repeatPasswordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RepeatPasswprdChanged value)
        repeatPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UserTypeChanged value)? userTypeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl();

  @override
  String toString() {
    return 'RegisterEvent.register()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(UserType type) userTypeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String repeatPassword) repeatPasswordChanged,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(UserType type)? userTypeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String repeatPassword)? repeatPasswordChanged,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(UserType type)? userTypeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String repeatPassword)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RepeatPasswprdChanged value)
        repeatPasswordChanged,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UserTypeChanged value)? userTypeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements RegisterEvent {
  const factory _Register() = _$RegisterImpl;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(UserType type) userTypeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String repeatPassword) repeatPasswordChanged,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(UserType type)? userTypeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String repeatPassword)? repeatPasswordChanged,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(UserType type)? userTypeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String repeatPassword)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RepeatPasswprdChanged value)
        repeatPasswordChanged,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UserTypeChanged value)? userTypeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'RegisterEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(UserType type) userTypeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String repeatPassword) repeatPasswordChanged,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(UserType type)? userTypeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String repeatPassword)? repeatPasswordChanged,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(UserType type)? userTypeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String repeatPassword)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RepeatPasswprdChanged value)
        repeatPasswordChanged,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UserTypeChanged value)? userTypeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RegisterEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserTypeChangedImplCopyWith<$Res> {
  factory _$$UserTypeChangedImplCopyWith(_$UserTypeChangedImpl value,
          $Res Function(_$UserTypeChangedImpl) then) =
      __$$UserTypeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserType type});
}

/// @nodoc
class __$$UserTypeChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UserTypeChangedImpl>
    implements _$$UserTypeChangedImplCopyWith<$Res> {
  __$$UserTypeChangedImplCopyWithImpl(
      _$UserTypeChangedImpl _value, $Res Function(_$UserTypeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$UserTypeChangedImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc

class _$UserTypeChangedImpl implements _UserTypeChanged {
  const _$UserTypeChangedImpl(this.type);

  @override
  final UserType type;

  @override
  String toString() {
    return 'RegisterEvent.userTypeChanged(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTypeChangedImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTypeChangedImplCopyWith<_$UserTypeChangedImpl> get copyWith =>
      __$$UserTypeChangedImplCopyWithImpl<_$UserTypeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(UserType type) userTypeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String repeatPassword) repeatPasswordChanged,
  }) {
    return userTypeChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(UserType type)? userTypeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String repeatPassword)? repeatPasswordChanged,
  }) {
    return userTypeChanged?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(UserType type)? userTypeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String repeatPassword)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (userTypeChanged != null) {
      return userTypeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RepeatPasswprdChanged value)
        repeatPasswordChanged,
  }) {
    return userTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UserTypeChanged value)? userTypeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
  }) {
    return userTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (userTypeChanged != null) {
      return userTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _UserTypeChanged implements RegisterEvent {
  const factory _UserTypeChanged(final UserType type) = _$UserTypeChangedImpl;

  UserType get type;
  @JsonKey(ignore: true)
  _$$UserTypeChangedImplCopyWith<_$UserTypeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(UserType type) userTypeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String repeatPassword) repeatPasswordChanged,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(UserType type)? userTypeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String repeatPassword)? repeatPasswordChanged,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(UserType type)? userTypeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String repeatPassword)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RepeatPasswprdChanged value)
        repeatPasswordChanged,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UserTypeChanged value)? userTypeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RepeatPasswprdChangedImplCopyWith<$Res> {
  factory _$$RepeatPasswprdChangedImplCopyWith(
          _$RepeatPasswprdChangedImpl value,
          $Res Function(_$RepeatPasswprdChangedImpl) then) =
      __$$RepeatPasswprdChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String repeatPassword});
}

/// @nodoc
class __$$RepeatPasswprdChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RepeatPasswprdChangedImpl>
    implements _$$RepeatPasswprdChangedImplCopyWith<$Res> {
  __$$RepeatPasswprdChangedImplCopyWithImpl(_$RepeatPasswprdChangedImpl _value,
      $Res Function(_$RepeatPasswprdChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeatPassword = null,
  }) {
    return _then(_$RepeatPasswprdChangedImpl(
      null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepeatPasswprdChangedImpl implements _RepeatPasswprdChanged {
  const _$RepeatPasswprdChangedImpl(this.repeatPassword);

  @override
  final String repeatPassword;

  @override
  String toString() {
    return 'RegisterEvent.repeatPasswordChanged(repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeatPasswprdChangedImpl &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repeatPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepeatPasswprdChangedImplCopyWith<_$RepeatPasswprdChangedImpl>
      get copyWith => __$$RepeatPasswprdChangedImplCopyWithImpl<
          _$RepeatPasswprdChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(UserType type) userTypeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String repeatPassword) repeatPasswordChanged,
  }) {
    return repeatPasswordChanged(repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(UserType type)? userTypeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String repeatPassword)? repeatPasswordChanged,
  }) {
    return repeatPasswordChanged?.call(repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(UserType type)? userTypeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String repeatPassword)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (repeatPasswordChanged != null) {
      return repeatPasswordChanged(repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RepeatPasswprdChanged value)
        repeatPasswordChanged,
  }) {
    return repeatPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UserTypeChanged value)? userTypeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
  }) {
    return repeatPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RepeatPasswprdChanged value)? repeatPasswordChanged,
    required TResult orElse(),
  }) {
    if (repeatPasswordChanged != null) {
      return repeatPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _RepeatPasswprdChanged implements RegisterEvent {
  const factory _RepeatPasswprdChanged(final String repeatPassword) =
      _$RepeatPasswprdChangedImpl;

  String get repeatPassword;
  @JsonKey(ignore: true)
  _$$RepeatPasswprdChangedImplCopyWith<_$RepeatPasswprdChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get repeatPassword => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  UserType? get userType => throw _privateConstructorUsedError;
  RegisterStatus get status => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {String email,
      String password,
      String repeatPassword,
      String fullName,
      UserType? userType,
      RegisterStatus status,
      dynamic error});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? repeatPassword = null,
    Object? fullName = null,
    Object? userType = freezed,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String repeatPassword,
      String fullName,
      UserType? userType,
      RegisterStatus status,
      dynamic error});
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? repeatPassword = null,
    Object? fullName = null,
    Object? userType = freezed,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$RegisterStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl extends _RegisterState {
  const _$RegisterStateImpl(
      {required this.email,
      required this.password,
      required this.repeatPassword,
      required this.fullName,
      this.userType,
      required this.status,
      this.error})
      : super._();

  @override
  final String email;
  @override
  final String password;
  @override
  final String repeatPassword;
  @override
  final String fullName;
  @override
  final UserType? userType;
  @override
  final RegisterStatus status;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'RegisterState(email: $email, password: $password, repeatPassword: $repeatPassword, fullName: $fullName, userType: $userType, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, repeatPassword,
      fullName, userType, status, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  const factory _RegisterState(
      {required final String email,
      required final String password,
      required final String repeatPassword,
      required final String fullName,
      final UserType? userType,
      required final RegisterStatus status,
      final dynamic error}) = _$RegisterStateImpl;
  const _RegisterState._() : super._();

  @override
  String get email;
  @override
  String get password;
  @override
  String get repeatPassword;
  @override
  String get fullName;
  @override
  UserType? get userType;
  @override
  RegisterStatus get status;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
