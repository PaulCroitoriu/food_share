// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getNotifications,
    required TResult Function(String id) readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getNotifications,
    TResult? Function(String id)? readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getNotifications,
    TResult Function(String id)? readNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_ReadNotification value) readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_ReadNotification value)? readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_ReadNotification value)? readNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNotificationsImplCopyWith<$Res> {
  factory _$$GetNotificationsImplCopyWith(_$GetNotificationsImpl value,
          $Res Function(_$GetNotificationsImpl) then) =
      __$$GetNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$GetNotificationsImpl>
    implements _$$GetNotificationsImplCopyWith<$Res> {
  __$$GetNotificationsImplCopyWithImpl(_$GetNotificationsImpl _value,
      $Res Function(_$GetNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetNotificationsImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNotificationsImpl implements _GetNotifications {
  const _$GetNotificationsImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'NotificationsEvent.getNotifications(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      __$$GetNotificationsImplCopyWithImpl<_$GetNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getNotifications,
    required TResult Function(String id) readNotification,
  }) {
    return getNotifications(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getNotifications,
    TResult? Function(String id)? readNotification,
  }) {
    return getNotifications?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getNotifications,
    TResult Function(String id)? readNotification,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_ReadNotification value) readNotification,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_ReadNotification value)? readNotification,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_ReadNotification value)? readNotification,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class _GetNotifications implements NotificationsEvent {
  const factory _GetNotifications(final String userId) = _$GetNotificationsImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadNotificationImplCopyWith<$Res> {
  factory _$$ReadNotificationImplCopyWith(_$ReadNotificationImpl value,
          $Res Function(_$ReadNotificationImpl) then) =
      __$$ReadNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ReadNotificationImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$ReadNotificationImpl>
    implements _$$ReadNotificationImplCopyWith<$Res> {
  __$$ReadNotificationImplCopyWithImpl(_$ReadNotificationImpl _value,
      $Res Function(_$ReadNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ReadNotificationImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadNotificationImpl implements _ReadNotification {
  const _$ReadNotificationImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationsEvent.readNotification(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadNotificationImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadNotificationImplCopyWith<_$ReadNotificationImpl> get copyWith =>
      __$$ReadNotificationImplCopyWithImpl<_$ReadNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getNotifications,
    required TResult Function(String id) readNotification,
  }) {
    return readNotification(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getNotifications,
    TResult? Function(String id)? readNotification,
  }) {
    return readNotification?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getNotifications,
    TResult Function(String id)? readNotification,
    required TResult orElse(),
  }) {
    if (readNotification != null) {
      return readNotification(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_ReadNotification value) readNotification,
  }) {
    return readNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_ReadNotification value)? readNotification,
  }) {
    return readNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_ReadNotification value)? readNotification,
    required TResult orElse(),
  }) {
    if (readNotification != null) {
      return readNotification(this);
    }
    return orElse();
  }
}

abstract class _ReadNotification implements NotificationsEvent {
  const factory _ReadNotification(final String id) = _$ReadNotificationImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$ReadNotificationImplCopyWith<_$ReadNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsState {
  NotificationsStatus get status => throw _privateConstructorUsedError;
  List<Notification> get notifications => throw _privateConstructorUsedError;
  Map<String, List<Notification>> get groupedNotifications =>
      throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsStateCopyWith<NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
  @useResult
  $Res call(
      {NotificationsStatus status,
      List<Notification> notifications,
      Map<String, List<Notification>> groupedNotifications,
      dynamic error});
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notifications = null,
    Object? groupedNotifications = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationsStatus,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      groupedNotifications: null == groupedNotifications
          ? _value.groupedNotifications
          : groupedNotifications // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Notification>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationsStateImplCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$$NotificationsStateImplCopyWith(_$NotificationsStateImpl value,
          $Res Function(_$NotificationsStateImpl) then) =
      __$$NotificationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotificationsStatus status,
      List<Notification> notifications,
      Map<String, List<Notification>> groupedNotifications,
      dynamic error});
}

/// @nodoc
class __$$NotificationsStateImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$NotificationsStateImpl>
    implements _$$NotificationsStateImplCopyWith<$Res> {
  __$$NotificationsStateImplCopyWithImpl(_$NotificationsStateImpl _value,
      $Res Function(_$NotificationsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notifications = null,
    Object? groupedNotifications = null,
    Object? error = freezed,
  }) {
    return _then(_$NotificationsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationsStatus,
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      groupedNotifications: null == groupedNotifications
          ? _value._groupedNotifications
          : groupedNotifications // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Notification>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NotificationsStateImpl implements _NotificationsState {
  const _$NotificationsStateImpl(
      {required this.status,
      required final List<Notification> notifications,
      required final Map<String, List<Notification>> groupedNotifications,
      this.error})
      : _notifications = notifications,
        _groupedNotifications = groupedNotifications;

  @override
  final NotificationsStatus status;
  final List<Notification> _notifications;
  @override
  List<Notification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  final Map<String, List<Notification>> _groupedNotifications;
  @override
  Map<String, List<Notification>> get groupedNotifications {
    if (_groupedNotifications is EqualUnmodifiableMapView)
      return _groupedNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_groupedNotifications);
  }

  @override
  final dynamic error;

  @override
  String toString() {
    return 'NotificationsState(status: $status, notifications: $notifications, groupedNotifications: $groupedNotifications, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality()
                .equals(other._groupedNotifications, _groupedNotifications) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_notifications),
      const DeepCollectionEquality().hash(_groupedNotifications),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsStateImplCopyWith<_$NotificationsStateImpl> get copyWith =>
      __$$NotificationsStateImplCopyWithImpl<_$NotificationsStateImpl>(
          this, _$identity);
}

abstract class _NotificationsState implements NotificationsState {
  const factory _NotificationsState(
      {required final NotificationsStatus status,
      required final List<Notification> notifications,
      required final Map<String, List<Notification>> groupedNotifications,
      final dynamic error}) = _$NotificationsStateImpl;

  @override
  NotificationsStatus get status;
  @override
  List<Notification> get notifications;
  @override
  Map<String, List<Notification>> get groupedNotifications;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$NotificationsStateImplCopyWith<_$NotificationsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
