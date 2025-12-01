import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';
import 'package:spots_xplorer_app/features/home/domain/restaurent_model.dart';

part 'restaurent_dto.freezed.dart';
part 'restaurent_dto.g.dart';

@freezed
class RestaurentDto with _$RestaurentDto {
    const RestaurentDto._();
  const factory RestaurentDto({
    int? id,
    String? etablishement,
    String? city,
    String? country,
    List<ImageModel>? images,
  }) = _RestaurentDto;

  factory RestaurentDto.fromJson(Map<String, dynamic> json) =>
      _$RestaurentDtoFromJson(json);

  RestaurentModel toDomain() => RestaurentModel(
    id: id ?? -1,
    etablishement: etablishement ?? '',
    city: city ?? "",
    country: country ?? '',
    images: images ?? [],
  );
}
