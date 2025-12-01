// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppNotification _$AppNotificationFromJson(Map<String, dynamic> json) {
  return _AppNotification.fromJson(json);
}

/// @nodoc
mixin _$AppNotification {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  NotificationType get type => throw _privateConstructorUsedError;
  NotificationPriority get priority => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get actionUrl => throw _privateConstructorUsedError;
  String? get entityId =>
      throw _privateConstructorUsedError; // For navigation to specific items (hotel ID, reservation ID, etc.)
  bool get isRead => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  bool get requiresAction => throw _privateConstructorUsedError;
  String? get actionButtonText => throw _privateConstructorUsedError;

  /// Serializes this AppNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
          AppNotification value, $Res Function(AppNotification) then) =
      _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      NotificationType type,
      NotificationPriority priority,
      Map<String, dynamic> data,
      String? imageUrl,
      String? actionUrl,
      String? entityId,
      bool isRead,
      DateTime? createdAt,
      DateTime? scheduledAt,
      bool requiresAction,
      String? actionButtonText});
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? priority = null,
    Object? data = null,
    Object? imageUrl = freezed,
    Object? actionUrl = freezed,
    Object? entityId = freezed,
    Object? isRead = null,
    Object? createdAt = freezed,
    Object? scheduledAt = freezed,
    Object? requiresAction = null,
    Object? actionButtonText = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      actionUrl: freezed == actionUrl
          ? _value.actionUrl
          : actionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiresAction: null == requiresAction
          ? _value.requiresAction
          : requiresAction // ignore: cast_nullable_to_non_nullable
              as bool,
      actionButtonText: freezed == actionButtonText
          ? _value.actionButtonText
          : actionButtonText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppNotificationImplCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$AppNotificationImplCopyWith(_$AppNotificationImpl value,
          $Res Function(_$AppNotificationImpl) then) =
      __$$AppNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      NotificationType type,
      NotificationPriority priority,
      Map<String, dynamic> data,
      String? imageUrl,
      String? actionUrl,
      String? entityId,
      bool isRead,
      DateTime? createdAt,
      DateTime? scheduledAt,
      bool requiresAction,
      String? actionButtonText});
}

/// @nodoc
class __$$AppNotificationImplCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$AppNotificationImpl>
    implements _$$AppNotificationImplCopyWith<$Res> {
  __$$AppNotificationImplCopyWithImpl(
      _$AppNotificationImpl _value, $Res Function(_$AppNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? priority = null,
    Object? data = null,
    Object? imageUrl = freezed,
    Object? actionUrl = freezed,
    Object? entityId = freezed,
    Object? isRead = null,
    Object? createdAt = freezed,
    Object? scheduledAt = freezed,
    Object? requiresAction = null,
    Object? actionButtonText = freezed,
  }) {
    return _then(_$AppNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      actionUrl: freezed == actionUrl
          ? _value.actionUrl
          : actionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiresAction: null == requiresAction
          ? _value.requiresAction
          : requiresAction // ignore: cast_nullable_to_non_nullable
              as bool,
      actionButtonText: freezed == actionButtonText
          ? _value.actionButtonText
          : actionButtonText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppNotificationImpl implements _AppNotification {
  const _$AppNotificationImpl(
      {required this.id,
      required this.title,
      required this.body,
      this.type = NotificationType.general,
      this.priority = NotificationPriority.normal,
      final Map<String, dynamic> data = const {},
      this.imageUrl,
      this.actionUrl,
      this.entityId,
      this.isRead = false,
      this.createdAt,
      this.scheduledAt,
      this.requiresAction = false,
      this.actionButtonText})
      : _data = data;

  factory _$AppNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppNotificationImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  @JsonKey()
  final NotificationType type;
  @override
  @JsonKey()
  final NotificationPriority priority;
  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final String? imageUrl;
  @override
  final String? actionUrl;
  @override
  final String? entityId;
// For navigation to specific items (hotel ID, reservation ID, etc.)
  @override
  @JsonKey()
  final bool isRead;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? scheduledAt;
  @override
  @JsonKey()
  final bool requiresAction;
  @override
  final String? actionButtonText;

  @override
  String toString() {
    return 'AppNotification(id: $id, title: $title, body: $body, type: $type, priority: $priority, data: $data, imageUrl: $imageUrl, actionUrl: $actionUrl, entityId: $entityId, isRead: $isRead, createdAt: $createdAt, scheduledAt: $scheduledAt, requiresAction: $requiresAction, actionButtonText: $actionButtonText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.actionUrl, actionUrl) ||
                other.actionUrl == actionUrl) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.requiresAction, requiresAction) ||
                other.requiresAction == requiresAction) &&
            (identical(other.actionButtonText, actionButtonText) ||
                other.actionButtonText == actionButtonText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      body,
      type,
      priority,
      const DeepCollectionEquality().hash(_data),
      imageUrl,
      actionUrl,
      entityId,
      isRead,
      createdAt,
      scheduledAt,
      requiresAction,
      actionButtonText);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      __$$AppNotificationImplCopyWithImpl<_$AppNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppNotificationImplToJson(
      this,
    );
  }
}

abstract class _AppNotification implements AppNotification {
  const factory _AppNotification(
      {required final String id,
      required final String title,
      required final String body,
      final NotificationType type,
      final NotificationPriority priority,
      final Map<String, dynamic> data,
      final String? imageUrl,
      final String? actionUrl,
      final String? entityId,
      final bool isRead,
      final DateTime? createdAt,
      final DateTime? scheduledAt,
      final bool requiresAction,
      final String? actionButtonText}) = _$AppNotificationImpl;

  factory _AppNotification.fromJson(Map<String, dynamic> json) =
      _$AppNotificationImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  NotificationType get type;
  @override
  NotificationPriority get priority;
  @override
  Map<String, dynamic> get data;
  @override
  String? get imageUrl;
  @override
  String? get actionUrl;
  @override
  String?
      get entityId; // For navigation to specific items (hotel ID, reservation ID, etc.)
  @override
  bool get isRead;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get scheduledAt;
  @override
  bool get requiresAction;
  @override
  String? get actionButtonText;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationSettings _$NotificationSettingsFromJson(Map<String, dynamic> json) {
  return _NotificationSettings.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettings {
  bool get isEnabled => throw _privateConstructorUsedError;
  bool get allowPromotions => throw _privateConstructorUsedError;
  bool get allowReservationUpdates => throw _privateConstructorUsedError;
  bool get allowReminders => throw _privateConstructorUsedError;
  bool get allowReviews => throw _privateConstructorUsedError;
  bool get allowSound => throw _privateConstructorUsedError;
  bool get allowVibration => throw _privateConstructorUsedError;
  bool get allowBadge => throw _privateConstructorUsedError;
  List<String> get subscribedTopics => throw _privateConstructorUsedError;
  String get defaultPriority => throw _privateConstructorUsedError;
  bool get showInForeground => throw _privateConstructorUsedError;

  /// Serializes this NotificationSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationSettingsCopyWith<NotificationSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsCopyWith<$Res> {
  factory $NotificationSettingsCopyWith(NotificationSettings value,
          $Res Function(NotificationSettings) then) =
      _$NotificationSettingsCopyWithImpl<$Res, NotificationSettings>;
  @useResult
  $Res call(
      {bool isEnabled,
      bool allowPromotions,
      bool allowReservationUpdates,
      bool allowReminders,
      bool allowReviews,
      bool allowSound,
      bool allowVibration,
      bool allowBadge,
      List<String> subscribedTopics,
      String defaultPriority,
      bool showInForeground});
}

/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res,
        $Val extends NotificationSettings>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? allowPromotions = null,
    Object? allowReservationUpdates = null,
    Object? allowReminders = null,
    Object? allowReviews = null,
    Object? allowSound = null,
    Object? allowVibration = null,
    Object? allowBadge = null,
    Object? subscribedTopics = null,
    Object? defaultPriority = null,
    Object? showInForeground = null,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPromotions: null == allowPromotions
          ? _value.allowPromotions
          : allowPromotions // ignore: cast_nullable_to_non_nullable
              as bool,
      allowReservationUpdates: null == allowReservationUpdates
          ? _value.allowReservationUpdates
          : allowReservationUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      allowReminders: null == allowReminders
          ? _value.allowReminders
          : allowReminders // ignore: cast_nullable_to_non_nullable
              as bool,
      allowReviews: null == allowReviews
          ? _value.allowReviews
          : allowReviews // ignore: cast_nullable_to_non_nullable
              as bool,
      allowSound: null == allowSound
          ? _value.allowSound
          : allowSound // ignore: cast_nullable_to_non_nullable
              as bool,
      allowVibration: null == allowVibration
          ? _value.allowVibration
          : allowVibration // ignore: cast_nullable_to_non_nullable
              as bool,
      allowBadge: null == allowBadge
          ? _value.allowBadge
          : allowBadge // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribedTopics: null == subscribedTopics
          ? _value.subscribedTopics
          : subscribedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultPriority: null == defaultPriority
          ? _value.defaultPriority
          : defaultPriority // ignore: cast_nullable_to_non_nullable
              as String,
      showInForeground: null == showInForeground
          ? _value.showInForeground
          : showInForeground // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSettingsImplCopyWith<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  factory _$$NotificationSettingsImplCopyWith(_$NotificationSettingsImpl value,
          $Res Function(_$NotificationSettingsImpl) then) =
      __$$NotificationSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEnabled,
      bool allowPromotions,
      bool allowReservationUpdates,
      bool allowReminders,
      bool allowReviews,
      bool allowSound,
      bool allowVibration,
      bool allowBadge,
      List<String> subscribedTopics,
      String defaultPriority,
      bool showInForeground});
}

/// @nodoc
class __$$NotificationSettingsImplCopyWithImpl<$Res>
    extends _$NotificationSettingsCopyWithImpl<$Res, _$NotificationSettingsImpl>
    implements _$$NotificationSettingsImplCopyWith<$Res> {
  __$$NotificationSettingsImplCopyWithImpl(_$NotificationSettingsImpl _value,
      $Res Function(_$NotificationSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? allowPromotions = null,
    Object? allowReservationUpdates = null,
    Object? allowReminders = null,
    Object? allowReviews = null,
    Object? allowSound = null,
    Object? allowVibration = null,
    Object? allowBadge = null,
    Object? subscribedTopics = null,
    Object? defaultPriority = null,
    Object? showInForeground = null,
  }) {
    return _then(_$NotificationSettingsImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPromotions: null == allowPromotions
          ? _value.allowPromotions
          : allowPromotions // ignore: cast_nullable_to_non_nullable
              as bool,
      allowReservationUpdates: null == allowReservationUpdates
          ? _value.allowReservationUpdates
          : allowReservationUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      allowReminders: null == allowReminders
          ? _value.allowReminders
          : allowReminders // ignore: cast_nullable_to_non_nullable
              as bool,
      allowReviews: null == allowReviews
          ? _value.allowReviews
          : allowReviews // ignore: cast_nullable_to_non_nullable
              as bool,
      allowSound: null == allowSound
          ? _value.allowSound
          : allowSound // ignore: cast_nullable_to_non_nullable
              as bool,
      allowVibration: null == allowVibration
          ? _value.allowVibration
          : allowVibration // ignore: cast_nullable_to_non_nullable
              as bool,
      allowBadge: null == allowBadge
          ? _value.allowBadge
          : allowBadge // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribedTopics: null == subscribedTopics
          ? _value._subscribedTopics
          : subscribedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultPriority: null == defaultPriority
          ? _value.defaultPriority
          : defaultPriority // ignore: cast_nullable_to_non_nullable
              as String,
      showInForeground: null == showInForeground
          ? _value.showInForeground
          : showInForeground // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingsImpl implements _NotificationSettings {
  const _$NotificationSettingsImpl(
      {this.isEnabled = true,
      this.allowPromotions = true,
      this.allowReservationUpdates = true,
      this.allowReminders = true,
      this.allowReviews = true,
      this.allowSound = true,
      this.allowVibration = true,
      this.allowBadge = true,
      final List<String> subscribedTopics = const [],
      this.defaultPriority = 'normal',
      this.showInForeground = true})
      : _subscribedTopics = subscribedTopics;

  factory _$NotificationSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingsImplFromJson(json);

  @override
  @JsonKey()
  final bool isEnabled;
  @override
  @JsonKey()
  final bool allowPromotions;
  @override
  @JsonKey()
  final bool allowReservationUpdates;
  @override
  @JsonKey()
  final bool allowReminders;
  @override
  @JsonKey()
  final bool allowReviews;
  @override
  @JsonKey()
  final bool allowSound;
  @override
  @JsonKey()
  final bool allowVibration;
  @override
  @JsonKey()
  final bool allowBadge;
  final List<String> _subscribedTopics;
  @override
  @JsonKey()
  List<String> get subscribedTopics {
    if (_subscribedTopics is EqualUnmodifiableListView)
      return _subscribedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscribedTopics);
  }

  @override
  @JsonKey()
  final String defaultPriority;
  @override
  @JsonKey()
  final bool showInForeground;

  @override
  String toString() {
    return 'NotificationSettings(isEnabled: $isEnabled, allowPromotions: $allowPromotions, allowReservationUpdates: $allowReservationUpdates, allowReminders: $allowReminders, allowReviews: $allowReviews, allowSound: $allowSound, allowVibration: $allowVibration, allowBadge: $allowBadge, subscribedTopics: $subscribedTopics, defaultPriority: $defaultPriority, showInForeground: $showInForeground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingsImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.allowPromotions, allowPromotions) ||
                other.allowPromotions == allowPromotions) &&
            (identical(
                    other.allowReservationUpdates, allowReservationUpdates) ||
                other.allowReservationUpdates == allowReservationUpdates) &&
            (identical(other.allowReminders, allowReminders) ||
                other.allowReminders == allowReminders) &&
            (identical(other.allowReviews, allowReviews) ||
                other.allowReviews == allowReviews) &&
            (identical(other.allowSound, allowSound) ||
                other.allowSound == allowSound) &&
            (identical(other.allowVibration, allowVibration) ||
                other.allowVibration == allowVibration) &&
            (identical(other.allowBadge, allowBadge) ||
                other.allowBadge == allowBadge) &&
            const DeepCollectionEquality()
                .equals(other._subscribedTopics, _subscribedTopics) &&
            (identical(other.defaultPriority, defaultPriority) ||
                other.defaultPriority == defaultPriority) &&
            (identical(other.showInForeground, showInForeground) ||
                other.showInForeground == showInForeground));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isEnabled,
      allowPromotions,
      allowReservationUpdates,
      allowReminders,
      allowReviews,
      allowSound,
      allowVibration,
      allowBadge,
      const DeepCollectionEquality().hash(_subscribedTopics),
      defaultPriority,
      showInForeground);

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith =>
          __$$NotificationSettingsImplCopyWithImpl<_$NotificationSettingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingsImplToJson(
      this,
    );
  }
}

abstract class _NotificationSettings implements NotificationSettings {
  const factory _NotificationSettings(
      {final bool isEnabled,
      final bool allowPromotions,
      final bool allowReservationUpdates,
      final bool allowReminders,
      final bool allowReviews,
      final bool allowSound,
      final bool allowVibration,
      final bool allowBadge,
      final List<String> subscribedTopics,
      final String defaultPriority,
      final bool showInForeground}) = _$NotificationSettingsImpl;

  factory _NotificationSettings.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingsImpl.fromJson;

  @override
  bool get isEnabled;
  @override
  bool get allowPromotions;
  @override
  bool get allowReservationUpdates;
  @override
  bool get allowReminders;
  @override
  bool get allowReviews;
  @override
  bool get allowSound;
  @override
  bool get allowVibration;
  @override
  bool get allowBadge;
  @override
  List<String> get subscribedTopics;
  @override
  String get defaultPriority;
  @override
  bool get showInForeground;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationTopic _$NotificationTopicFromJson(Map<String, dynamic> json) {
  return _NotificationTopic.fromJson(json);
}

/// @nodoc
mixin _$NotificationTopic {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isSubscribed => throw _privateConstructorUsedError;
  NotificationPriority get priority => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  bool get isOptional => throw _privateConstructorUsedError;

  /// Serializes this NotificationTopic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationTopicCopyWith<NotificationTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationTopicCopyWith<$Res> {
  factory $NotificationTopicCopyWith(
          NotificationTopic value, $Res Function(NotificationTopic) then) =
      _$NotificationTopicCopyWithImpl<$Res, NotificationTopic>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      bool isSubscribed,
      NotificationPriority priority,
      String? icon,
      bool isOptional});
}

/// @nodoc
class _$NotificationTopicCopyWithImpl<$Res, $Val extends NotificationTopic>
    implements $NotificationTopicCopyWith<$Res> {
  _$NotificationTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? isSubscribed = null,
    Object? priority = null,
    Object? icon = freezed,
    Object? isOptional = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: null == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationTopicImplCopyWith<$Res>
    implements $NotificationTopicCopyWith<$Res> {
  factory _$$NotificationTopicImplCopyWith(_$NotificationTopicImpl value,
          $Res Function(_$NotificationTopicImpl) then) =
      __$$NotificationTopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      bool isSubscribed,
      NotificationPriority priority,
      String? icon,
      bool isOptional});
}

/// @nodoc
class __$$NotificationTopicImplCopyWithImpl<$Res>
    extends _$NotificationTopicCopyWithImpl<$Res, _$NotificationTopicImpl>
    implements _$$NotificationTopicImplCopyWith<$Res> {
  __$$NotificationTopicImplCopyWithImpl(_$NotificationTopicImpl _value,
      $Res Function(_$NotificationTopicImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? isSubscribed = null,
    Object? priority = null,
    Object? icon = freezed,
    Object? isOptional = null,
  }) {
    return _then(_$NotificationTopicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: null == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationTopicImpl implements _NotificationTopic {
  const _$NotificationTopicImpl(
      {required this.id,
      required this.name,
      required this.description,
      this.isSubscribed = false,
      this.priority = NotificationPriority.normal,
      this.icon,
      this.isOptional = true});

  factory _$NotificationTopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationTopicImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey()
  final bool isSubscribed;
  @override
  @JsonKey()
  final NotificationPriority priority;
  @override
  final String? icon;
  @override
  @JsonKey()
  final bool isOptional;

  @override
  String toString() {
    return 'NotificationTopic(id: $id, name: $name, description: $description, isSubscribed: $isSubscribed, priority: $priority, icon: $icon, isOptional: $isOptional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationTopicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      isSubscribed, priority, icon, isOptional);

  /// Create a copy of NotificationTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationTopicImplCopyWith<_$NotificationTopicImpl> get copyWith =>
      __$$NotificationTopicImplCopyWithImpl<_$NotificationTopicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationTopicImplToJson(
      this,
    );
  }
}

abstract class _NotificationTopic implements NotificationTopic {
  const factory _NotificationTopic(
      {required final String id,
      required final String name,
      required final String description,
      final bool isSubscribed,
      final NotificationPriority priority,
      final String? icon,
      final bool isOptional}) = _$NotificationTopicImpl;

  factory _NotificationTopic.fromJson(Map<String, dynamic> json) =
      _$NotificationTopicImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get isSubscribed;
  @override
  NotificationPriority get priority;
  @override
  String? get icon;
  @override
  bool get isOptional;

  /// Create a copy of NotificationTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationTopicImplCopyWith<_$NotificationTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationAction _$NotificationActionFromJson(Map<String, dynamic> json) {
  return _NotificationAction.fromJson(json);
}

/// @nodoc
mixin _$NotificationAction {
  String get route => throw _privateConstructorUsedError;
  Map<String, dynamic>? get parameters => throw _privateConstructorUsedError;
  Map<String, String>? get queryParameters =>
      throw _privateConstructorUsedError;
  bool? get clearStack => throw _privateConstructorUsedError;

  /// Serializes this NotificationAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationActionCopyWith<NotificationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionCopyWith<$Res> {
  factory $NotificationActionCopyWith(
          NotificationAction value, $Res Function(NotificationAction) then) =
      _$NotificationActionCopyWithImpl<$Res, NotificationAction>;
  @useResult
  $Res call(
      {String route,
      Map<String, dynamic>? parameters,
      Map<String, String>? queryParameters,
      bool? clearStack});
}

/// @nodoc
class _$NotificationActionCopyWithImpl<$Res, $Val extends NotificationAction>
    implements $NotificationActionCopyWith<$Res> {
  _$NotificationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? parameters = freezed,
    Object? queryParameters = freezed,
    Object? clearStack = freezed,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      queryParameters: freezed == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      clearStack: freezed == clearStack
          ? _value.clearStack
          : clearStack // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationActionImplCopyWith<$Res>
    implements $NotificationActionCopyWith<$Res> {
  factory _$$NotificationActionImplCopyWith(_$NotificationActionImpl value,
          $Res Function(_$NotificationActionImpl) then) =
      __$$NotificationActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String route,
      Map<String, dynamic>? parameters,
      Map<String, String>? queryParameters,
      bool? clearStack});
}

/// @nodoc
class __$$NotificationActionImplCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res, _$NotificationActionImpl>
    implements _$$NotificationActionImplCopyWith<$Res> {
  __$$NotificationActionImplCopyWithImpl(_$NotificationActionImpl _value,
      $Res Function(_$NotificationActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? parameters = freezed,
    Object? queryParameters = freezed,
    Object? clearStack = freezed,
  }) {
    return _then(_$NotificationActionImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      queryParameters: freezed == queryParameters
          ? _value._queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      clearStack: freezed == clearStack
          ? _value.clearStack
          : clearStack // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionImpl implements _NotificationAction {
  const _$NotificationActionImpl(
      {required this.route,
      final Map<String, dynamic>? parameters,
      final Map<String, String>? queryParameters,
      this.clearStack})
      : _parameters = parameters,
        _queryParameters = queryParameters;

  factory _$NotificationActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationActionImplFromJson(json);

  @override
  final String route;
  final Map<String, dynamic>? _parameters;
  @override
  Map<String, dynamic>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _queryParameters;
  @override
  Map<String, String>? get queryParameters {
    final value = _queryParameters;
    if (value == null) return null;
    if (_queryParameters is EqualUnmodifiableMapView) return _queryParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool? clearStack;

  @override
  String toString() {
    return 'NotificationAction(route: $route, parameters: $parameters, queryParameters: $queryParameters, clearStack: $clearStack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationActionImpl &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality()
                .equals(other._queryParameters, _queryParameters) &&
            (identical(other.clearStack, clearStack) ||
                other.clearStack == clearStack));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      route,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_queryParameters),
      clearStack);

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationActionImplCopyWith<_$NotificationActionImpl> get copyWith =>
      __$$NotificationActionImplCopyWithImpl<_$NotificationActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationActionImplToJson(
      this,
    );
  }
}

abstract class _NotificationAction implements NotificationAction {
  const factory _NotificationAction(
      {required final String route,
      final Map<String, dynamic>? parameters,
      final Map<String, String>? queryParameters,
      final bool? clearStack}) = _$NotificationActionImpl;

  factory _NotificationAction.fromJson(Map<String, dynamic> json) =
      _$NotificationActionImpl.fromJson;

  @override
  String get route;
  @override
  Map<String, dynamic>? get parameters;
  @override
  Map<String, String>? get queryParameters;
  @override
  bool? get clearStack;

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationActionImplCopyWith<_$NotificationActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FCMToken _$FCMTokenFromJson(Map<String, dynamic> json) {
  return _FCMToken.fromJson(json);
}

/// @nodoc
mixin _$FCMToken {
  String get token => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;

  /// Serializes this FCMToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FCMToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FCMTokenCopyWith<FCMToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMTokenCopyWith<$Res> {
  factory $FCMTokenCopyWith(FCMToken value, $Res Function(FCMToken) then) =
      _$FCMTokenCopyWithImpl<$Res, FCMToken>;
  @useResult
  $Res call(
      {String token,
      DateTime createdAt,
      DateTime? lastUpdated,
      bool isActive,
      String? userId,
      String? deviceId,
      String? platform});
}

/// @nodoc
class _$FCMTokenCopyWithImpl<$Res, $Val extends FCMToken>
    implements $FCMTokenCopyWith<$Res> {
  _$FCMTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FCMToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? createdAt = null,
    Object? lastUpdated = freezed,
    Object? isActive = null,
    Object? userId = freezed,
    Object? deviceId = freezed,
    Object? platform = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FCMTokenImplCopyWith<$Res>
    implements $FCMTokenCopyWith<$Res> {
  factory _$$FCMTokenImplCopyWith(
          _$FCMTokenImpl value, $Res Function(_$FCMTokenImpl) then) =
      __$$FCMTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      DateTime createdAt,
      DateTime? lastUpdated,
      bool isActive,
      String? userId,
      String? deviceId,
      String? platform});
}

/// @nodoc
class __$$FCMTokenImplCopyWithImpl<$Res>
    extends _$FCMTokenCopyWithImpl<$Res, _$FCMTokenImpl>
    implements _$$FCMTokenImplCopyWith<$Res> {
  __$$FCMTokenImplCopyWithImpl(
      _$FCMTokenImpl _value, $Res Function(_$FCMTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of FCMToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? createdAt = null,
    Object? lastUpdated = freezed,
    Object? isActive = null,
    Object? userId = freezed,
    Object? deviceId = freezed,
    Object? platform = freezed,
  }) {
    return _then(_$FCMTokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FCMTokenImpl implements _FCMToken {
  const _$FCMTokenImpl(
      {required this.token,
      required this.createdAt,
      this.lastUpdated,
      this.isActive = true,
      this.userId,
      this.deviceId,
      this.platform});

  factory _$FCMTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$FCMTokenImplFromJson(json);

  @override
  final String token;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastUpdated;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final String? userId;
  @override
  final String? deviceId;
  @override
  final String? platform;

  @override
  String toString() {
    return 'FCMToken(token: $token, createdAt: $createdAt, lastUpdated: $lastUpdated, isActive: $isActive, userId: $userId, deviceId: $deviceId, platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FCMTokenImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, createdAt, lastUpdated,
      isActive, userId, deviceId, platform);

  /// Create a copy of FCMToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FCMTokenImplCopyWith<_$FCMTokenImpl> get copyWith =>
      __$$FCMTokenImplCopyWithImpl<_$FCMTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FCMTokenImplToJson(
      this,
    );
  }
}

abstract class _FCMToken implements FCMToken {
  const factory _FCMToken(
      {required final String token,
      required final DateTime createdAt,
      final DateTime? lastUpdated,
      final bool isActive,
      final String? userId,
      final String? deviceId,
      final String? platform}) = _$FCMTokenImpl;

  factory _FCMToken.fromJson(Map<String, dynamic> json) =
      _$FCMTokenImpl.fromJson;

  @override
  String get token;
  @override
  DateTime get createdAt;
  @override
  DateTime? get lastUpdated;
  @override
  bool get isActive;
  @override
  String? get userId;
  @override
  String? get deviceId;
  @override
  String? get platform;

  /// Create a copy of FCMToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FCMTokenImplCopyWith<_$FCMTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
