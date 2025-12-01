import 'package:freezed_annotation/freezed_annotation.dart';

part 'sporting_level_model.freezed.dart';
part 'sporting_level_model.g.dart';

@freezed
class SportingLevelModel with _$SportingLevelModel {
  const factory SportingLevelModel({required int id, required String title}) =
      _SportingLevelModel;

  factory SportingLevelModel.fromJson(Map<String, Object?> json) =>
      _$SportingLevelModelFromJson(json);
}
