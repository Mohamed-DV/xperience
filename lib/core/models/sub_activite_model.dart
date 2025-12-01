import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_activite_model.freezed.dart';
part 'sub_activite_model.g.dart';

@freezed
class SubActiviteModel with _$SubActiviteModel {
  const factory SubActiviteModel({required int id, required String title}) =
      _SubActiviteModel;

  factory SubActiviteModel.fromJson(Map<String, Object?> json) =>
      _$SubActiviteModelFromJson(json);
}
