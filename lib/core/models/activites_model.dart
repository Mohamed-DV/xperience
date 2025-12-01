import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/sub_activite_model.dart';

part 'activites_model.freezed.dart';
part 'activites_model.g.dart';

@freezed
class ActivitesModel with _$ActivitesModel {
  const factory ActivitesModel({
    required int id,
    required String title,
    required String specificTitle,
    String? tag,
   required String icon,
    required List<SubActiviteModel> subCategories,
  }) = _ActivitesModel;

  factory ActivitesModel.fromJson(Map<String, Object?> json) =>
      _$ActivitesModelFromJson(json);
}
