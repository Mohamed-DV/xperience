import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/sporting_level_model.dart';
import 'package:spots_xplorer_app/core/models/sub_activite_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,

    String? firstName,
    String? lastName,
    String? phone,
    String? picture,
    String? birthDate,

    String? email,
    String? status,
    @JsonKey(includeToJson: false)
    @Default([])
    List<SubActiviteModel> subCategories,
    @JsonKey(includeToJson: false) SportingLevelModel? sportingLevel,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
