// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginStateImpl _$$LoginStateImplFromJson(Map<String, dynamic> json) =>
    _$LoginStateImpl(
      loginEmail: json['loginEmail'] as String? ?? '',
      loginPassword: json['loginPassword'] as String? ?? '',
      email: json['email'] as String? ?? '',
      savedEmail: json['savedEmail'] as String? ?? '',
      password: json['password'] as String? ?? '',
      newPassword: json['newPassword'] as String? ?? '',
      name: json['name'] as String? ?? '',
      prenom: json['prenom'] as String? ?? '',
      dateNaissance: json['dateNaissance'] == null
          ? null
          : DateTime.parse(json['dateNaissance'] as String),
      activiteFavoris: json['activiteFavoris'] as String? ?? '',
      niveauSport: json['niveauSport'] as String? ?? '',
      pays: json['pays'] as String? ?? '',
      deviceToken: json['deviceToken'] as String? ?? '',
      isLoggedIn: json['isLoggedIn'] as bool? ?? false,
      isFirstOpen: json['isFirstOpen'] as bool? ?? false,
      loading: json['loading'] as bool? ?? false,
      isGoogleloading: json['isGoogleloading'] as bool? ?? false,
      isFaceBookloading: json['isFaceBookloading'] as bool? ?? false,
      activites: (json['activites'] as List<dynamic>?)
              ?.map((e) => ActivitesModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sportLevel: (json['sportLevel'] as List<dynamic>?)
              ?.map(
                  (e) => SportingLevelModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedActivites: (json['selectedActivites'] as List<dynamic>?)
              ?.map((e) => SubActiviteModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedSportLevel: json['selectedSportLevel'] == null
          ? null
          : SportingLevelModel.fromJson(
              json['selectedSportLevel'] as Map<String, dynamic>),
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$$LoginStateImplToJson(_$LoginStateImpl instance) =>
    <String, dynamic>{
      'loginEmail': instance.loginEmail,
      'loginPassword': instance.loginPassword,
      'email': instance.email,
      'savedEmail': instance.savedEmail,
      'password': instance.password,
      'newPassword': instance.newPassword,
      'name': instance.name,
      'prenom': instance.prenom,
      'dateNaissance': instance.dateNaissance?.toIso8601String(),
      'activiteFavoris': instance.activiteFavoris,
      'niveauSport': instance.niveauSport,
      'pays': instance.pays,
      'deviceToken': instance.deviceToken,
      'isLoggedIn': instance.isLoggedIn,
      'isFirstOpen': instance.isFirstOpen,
      'loading': instance.loading,
      'isGoogleloading': instance.isGoogleloading,
      'isFaceBookloading': instance.isFaceBookloading,
      'activites': instance.activites,
      'sportLevel': instance.sportLevel,
      'selectedActivites': instance.selectedActivites,
      'selectedSportLevel': instance.selectedSportLevel,
      'locale': instance.locale,
    };
