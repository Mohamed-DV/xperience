// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  return _LoginState.fromJson(json);
}

/// @nodoc
mixin _$LoginState {
  String get loginEmail => throw _privateConstructorUsedError;
  String get loginPassword => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get savedEmail => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get prenom => throw _privateConstructorUsedError;
  DateTime? get dateNaissance => throw _privateConstructorUsedError;
  String get activiteFavoris => throw _privateConstructorUsedError;
  String get niveauSport => throw _privateConstructorUsedError;
  String get pays => throw _privateConstructorUsedError;
  String get deviceToken => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  bool get isFirstOpen => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get isGoogleloading => throw _privateConstructorUsedError;
  bool get isFaceBookloading => throw _privateConstructorUsedError;
  List<ActivitesModel> get activites => throw _privateConstructorUsedError;
  List<SportingLevelModel> get sportLevel => throw _privateConstructorUsedError;
  List<SubActiviteModel> get selectedActivites =>
      throw _privateConstructorUsedError;
  SportingLevelModel? get selectedSportLevel =>
      throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;

  /// Serializes this LoginState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String loginEmail,
      String loginPassword,
      String email,
      String savedEmail,
      String password,
      String newPassword,
      String name,
      String prenom,
      DateTime? dateNaissance,
      String activiteFavoris,
      String niveauSport,
      String pays,
      String deviceToken,
      bool isLoggedIn,
      bool isFirstOpen,
      bool loading,
      bool isGoogleloading,
      bool isFaceBookloading,
      List<ActivitesModel> activites,
      List<SportingLevelModel> sportLevel,
      List<SubActiviteModel> selectedActivites,
      SportingLevelModel? selectedSportLevel,
      String? locale});

  $SportingLevelModelCopyWith<$Res>? get selectedSportLevel;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginEmail = null,
    Object? loginPassword = null,
    Object? email = null,
    Object? savedEmail = null,
    Object? password = null,
    Object? newPassword = null,
    Object? name = null,
    Object? prenom = null,
    Object? dateNaissance = freezed,
    Object? activiteFavoris = null,
    Object? niveauSport = null,
    Object? pays = null,
    Object? deviceToken = null,
    Object? isLoggedIn = null,
    Object? isFirstOpen = null,
    Object? loading = null,
    Object? isGoogleloading = null,
    Object? isFaceBookloading = null,
    Object? activites = null,
    Object? sportLevel = null,
    Object? selectedActivites = null,
    Object? selectedSportLevel = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      loginEmail: null == loginEmail
          ? _value.loginEmail
          : loginEmail // ignore: cast_nullable_to_non_nullable
              as String,
      loginPassword: null == loginPassword
          ? _value.loginPassword
          : loginPassword // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      savedEmail: null == savedEmail
          ? _value.savedEmail
          : savedEmail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prenom: null == prenom
          ? _value.prenom
          : prenom // ignore: cast_nullable_to_non_nullable
              as String,
      dateNaissance: freezed == dateNaissance
          ? _value.dateNaissance
          : dateNaissance // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activiteFavoris: null == activiteFavoris
          ? _value.activiteFavoris
          : activiteFavoris // ignore: cast_nullable_to_non_nullable
              as String,
      niveauSport: null == niveauSport
          ? _value.niveauSport
          : niveauSport // ignore: cast_nullable_to_non_nullable
              as String,
      pays: null == pays
          ? _value.pays
          : pays // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstOpen: null == isFirstOpen
          ? _value.isFirstOpen
          : isFirstOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleloading: null == isGoogleloading
          ? _value.isGoogleloading
          : isGoogleloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFaceBookloading: null == isFaceBookloading
          ? _value.isFaceBookloading
          : isFaceBookloading // ignore: cast_nullable_to_non_nullable
              as bool,
      activites: null == activites
          ? _value.activites
          : activites // ignore: cast_nullable_to_non_nullable
              as List<ActivitesModel>,
      sportLevel: null == sportLevel
          ? _value.sportLevel
          : sportLevel // ignore: cast_nullable_to_non_nullable
              as List<SportingLevelModel>,
      selectedActivites: null == selectedActivites
          ? _value.selectedActivites
          : selectedActivites // ignore: cast_nullable_to_non_nullable
              as List<SubActiviteModel>,
      selectedSportLevel: freezed == selectedSportLevel
          ? _value.selectedSportLevel
          : selectedSportLevel // ignore: cast_nullable_to_non_nullable
              as SportingLevelModel?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SportingLevelModelCopyWith<$Res>? get selectedSportLevel {
    if (_value.selectedSportLevel == null) {
      return null;
    }

    return $SportingLevelModelCopyWith<$Res>(_value.selectedSportLevel!,
        (value) {
      return _then(_value.copyWith(selectedSportLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String loginEmail,
      String loginPassword,
      String email,
      String savedEmail,
      String password,
      String newPassword,
      String name,
      String prenom,
      DateTime? dateNaissance,
      String activiteFavoris,
      String niveauSport,
      String pays,
      String deviceToken,
      bool isLoggedIn,
      bool isFirstOpen,
      bool loading,
      bool isGoogleloading,
      bool isFaceBookloading,
      List<ActivitesModel> activites,
      List<SportingLevelModel> sportLevel,
      List<SubActiviteModel> selectedActivites,
      SportingLevelModel? selectedSportLevel,
      String? locale});

  @override
  $SportingLevelModelCopyWith<$Res>? get selectedSportLevel;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginEmail = null,
    Object? loginPassword = null,
    Object? email = null,
    Object? savedEmail = null,
    Object? password = null,
    Object? newPassword = null,
    Object? name = null,
    Object? prenom = null,
    Object? dateNaissance = freezed,
    Object? activiteFavoris = null,
    Object? niveauSport = null,
    Object? pays = null,
    Object? deviceToken = null,
    Object? isLoggedIn = null,
    Object? isFirstOpen = null,
    Object? loading = null,
    Object? isGoogleloading = null,
    Object? isFaceBookloading = null,
    Object? activites = null,
    Object? sportLevel = null,
    Object? selectedActivites = null,
    Object? selectedSportLevel = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$LoginStateImpl(
      loginEmail: null == loginEmail
          ? _value.loginEmail
          : loginEmail // ignore: cast_nullable_to_non_nullable
              as String,
      loginPassword: null == loginPassword
          ? _value.loginPassword
          : loginPassword // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      savedEmail: null == savedEmail
          ? _value.savedEmail
          : savedEmail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prenom: null == prenom
          ? _value.prenom
          : prenom // ignore: cast_nullable_to_non_nullable
              as String,
      dateNaissance: freezed == dateNaissance
          ? _value.dateNaissance
          : dateNaissance // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activiteFavoris: null == activiteFavoris
          ? _value.activiteFavoris
          : activiteFavoris // ignore: cast_nullable_to_non_nullable
              as String,
      niveauSport: null == niveauSport
          ? _value.niveauSport
          : niveauSport // ignore: cast_nullable_to_non_nullable
              as String,
      pays: null == pays
          ? _value.pays
          : pays // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstOpen: null == isFirstOpen
          ? _value.isFirstOpen
          : isFirstOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleloading: null == isGoogleloading
          ? _value.isGoogleloading
          : isGoogleloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFaceBookloading: null == isFaceBookloading
          ? _value.isFaceBookloading
          : isFaceBookloading // ignore: cast_nullable_to_non_nullable
              as bool,
      activites: null == activites
          ? _value._activites
          : activites // ignore: cast_nullable_to_non_nullable
              as List<ActivitesModel>,
      sportLevel: null == sportLevel
          ? _value._sportLevel
          : sportLevel // ignore: cast_nullable_to_non_nullable
              as List<SportingLevelModel>,
      selectedActivites: null == selectedActivites
          ? _value._selectedActivites
          : selectedActivites // ignore: cast_nullable_to_non_nullable
              as List<SubActiviteModel>,
      selectedSportLevel: freezed == selectedSportLevel
          ? _value.selectedSportLevel
          : selectedSportLevel // ignore: cast_nullable_to_non_nullable
              as SportingLevelModel?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.loginEmail = '',
      this.loginPassword = '',
      this.email = '',
      this.savedEmail = '',
      this.password = '',
      this.newPassword = '',
      this.name = '',
      this.prenom = '',
      this.dateNaissance,
      this.activiteFavoris = '',
      this.niveauSport = '',
      this.pays = '',
      this.deviceToken = '',
      this.isLoggedIn = false,
      this.isFirstOpen = false,
      this.loading = false,
      this.isGoogleloading = false,
      this.isFaceBookloading = false,
      final List<ActivitesModel> activites = const [],
      final List<SportingLevelModel> sportLevel = const [],
      final List<SubActiviteModel> selectedActivites = const [],
      this.selectedSportLevel,
      this.locale})
      : _activites = activites,
        _sportLevel = sportLevel,
        _selectedActivites = selectedActivites;

  factory _$LoginStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateImplFromJson(json);

  @override
  @JsonKey()
  final String loginEmail;
  @override
  @JsonKey()
  final String loginPassword;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String savedEmail;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String newPassword;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String prenom;
  @override
  final DateTime? dateNaissance;
  @override
  @JsonKey()
  final String activiteFavoris;
  @override
  @JsonKey()
  final String niveauSport;
  @override
  @JsonKey()
  final String pays;
  @override
  @JsonKey()
  final String deviceToken;
  @override
  @JsonKey()
  final bool isLoggedIn;
  @override
  @JsonKey()
  final bool isFirstOpen;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isGoogleloading;
  @override
  @JsonKey()
  final bool isFaceBookloading;
  final List<ActivitesModel> _activites;
  @override
  @JsonKey()
  List<ActivitesModel> get activites {
    if (_activites is EqualUnmodifiableListView) return _activites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activites);
  }

  final List<SportingLevelModel> _sportLevel;
  @override
  @JsonKey()
  List<SportingLevelModel> get sportLevel {
    if (_sportLevel is EqualUnmodifiableListView) return _sportLevel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sportLevel);
  }

  final List<SubActiviteModel> _selectedActivites;
  @override
  @JsonKey()
  List<SubActiviteModel> get selectedActivites {
    if (_selectedActivites is EqualUnmodifiableListView)
      return _selectedActivites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedActivites);
  }

  @override
  final SportingLevelModel? selectedSportLevel;
  @override
  final String? locale;

  @override
  String toString() {
    return 'LoginState(loginEmail: $loginEmail, loginPassword: $loginPassword, email: $email, savedEmail: $savedEmail, password: $password, newPassword: $newPassword, name: $name, prenom: $prenom, dateNaissance: $dateNaissance, activiteFavoris: $activiteFavoris, niveauSport: $niveauSport, pays: $pays, deviceToken: $deviceToken, isLoggedIn: $isLoggedIn, isFirstOpen: $isFirstOpen, loading: $loading, isGoogleloading: $isGoogleloading, isFaceBookloading: $isFaceBookloading, activites: $activites, sportLevel: $sportLevel, selectedActivites: $selectedActivites, selectedSportLevel: $selectedSportLevel, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.loginEmail, loginEmail) ||
                other.loginEmail == loginEmail) &&
            (identical(other.loginPassword, loginPassword) ||
                other.loginPassword == loginPassword) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.savedEmail, savedEmail) ||
                other.savedEmail == savedEmail) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.prenom, prenom) || other.prenom == prenom) &&
            (identical(other.dateNaissance, dateNaissance) ||
                other.dateNaissance == dateNaissance) &&
            (identical(other.activiteFavoris, activiteFavoris) ||
                other.activiteFavoris == activiteFavoris) &&
            (identical(other.niveauSport, niveauSport) ||
                other.niveauSport == niveauSport) &&
            (identical(other.pays, pays) || other.pays == pays) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.isFirstOpen, isFirstOpen) ||
                other.isFirstOpen == isFirstOpen) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isGoogleloading, isGoogleloading) ||
                other.isGoogleloading == isGoogleloading) &&
            (identical(other.isFaceBookloading, isFaceBookloading) ||
                other.isFaceBookloading == isFaceBookloading) &&
            const DeepCollectionEquality()
                .equals(other._activites, _activites) &&
            const DeepCollectionEquality()
                .equals(other._sportLevel, _sportLevel) &&
            const DeepCollectionEquality()
                .equals(other._selectedActivites, _selectedActivites) &&
            (identical(other.selectedSportLevel, selectedSportLevel) ||
                other.selectedSportLevel == selectedSportLevel) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        loginEmail,
        loginPassword,
        email,
        savedEmail,
        password,
        newPassword,
        name,
        prenom,
        dateNaissance,
        activiteFavoris,
        niveauSport,
        pays,
        deviceToken,
        isLoggedIn,
        isFirstOpen,
        loading,
        isGoogleloading,
        isFaceBookloading,
        const DeepCollectionEquality().hash(_activites),
        const DeepCollectionEquality().hash(_sportLevel),
        const DeepCollectionEquality().hash(_selectedActivites),
        selectedSportLevel,
        locale
      ]);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateImplToJson(
      this,
    );
  }
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final String loginEmail,
      final String loginPassword,
      final String email,
      final String savedEmail,
      final String password,
      final String newPassword,
      final String name,
      final String prenom,
      final DateTime? dateNaissance,
      final String activiteFavoris,
      final String niveauSport,
      final String pays,
      final String deviceToken,
      final bool isLoggedIn,
      final bool isFirstOpen,
      final bool loading,
      final bool isGoogleloading,
      final bool isFaceBookloading,
      final List<ActivitesModel> activites,
      final List<SportingLevelModel> sportLevel,
      final List<SubActiviteModel> selectedActivites,
      final SportingLevelModel? selectedSportLevel,
      final String? locale}) = _$LoginStateImpl;

  factory _LoginState.fromJson(Map<String, dynamic> json) =
      _$LoginStateImpl.fromJson;

  @override
  String get loginEmail;
  @override
  String get loginPassword;
  @override
  String get email;
  @override
  String get savedEmail;
  @override
  String get password;
  @override
  String get newPassword;
  @override
  String get name;
  @override
  String get prenom;
  @override
  DateTime? get dateNaissance;
  @override
  String get activiteFavoris;
  @override
  String get niveauSport;
  @override
  String get pays;
  @override
  String get deviceToken;
  @override
  bool get isLoggedIn;
  @override
  bool get isFirstOpen;
  @override
  bool get loading;
  @override
  bool get isGoogleloading;
  @override
  bool get isFaceBookloading;
  @override
  List<ActivitesModel> get activites;
  @override
  List<SportingLevelModel> get sportLevel;
  @override
  List<SubActiviteModel> get selectedActivites;
  @override
  SportingLevelModel? get selectedSportLevel;
  @override
  String? get locale;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
