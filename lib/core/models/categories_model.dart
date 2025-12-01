import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({
    required int id,
    required String title,
    required String image
   
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, Object?> json) =>
      _$CategoriesModelFromJson(json);
}
