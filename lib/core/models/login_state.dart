import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/activites_model.dart';
import 'package:spots_xplorer_app/core/models/sporting_level_model.dart';
import 'package:spots_xplorer_app/core/models/sub_activite_model.dart';

part 'login_state.freezed.dart';
part 'login_state.g.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String loginEmail,
    @Default('') String loginPassword,
    @Default('') String email,
    @Default('') String savedEmail,
    @Default('') String password,
    @Default('') String newPassword,
    @Default('') String name,
    @Default('') String prenom,
    DateTime? dateNaissance,
    @Default('') String activiteFavoris,
    @Default('') String niveauSport,
    @Default('') String pays,
    @Default('') String deviceToken,
    @Default(false) bool isLoggedIn,
    @Default(false) bool isFirstOpen,
    @Default(false) bool loading,
    @Default(false) bool isGoogleloading,
    @Default(false) bool isFaceBookloading,
    @Default([]) List<ActivitesModel> activites,
    @Default([]) List<SportingLevelModel> sportLevel,
    @Default([]) List<SubActiviteModel> selectedActivites,
    SportingLevelModel? selectedSportLevel,

    String? locale,
  }) = _LoginState;

  factory LoginState.fromJson(Map<String, Object?> json) =>
      _$LoginStateFromJson(json);
}
