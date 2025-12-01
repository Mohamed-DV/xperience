import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';
import 'package:spots_xplorer_app/features/home/domain/hotel_model.dart';

part 'hotel_dto.freezed.dart';
part 'hotel_dto.g.dart';

@freezed
class HotelDto with _$HotelDto {
  const HotelDto._();
  const factory HotelDto({
    int? id,
    String? title,
    String? description,
    String? price,
    String? city,
    String? country,
    String? type,
    List<ImageModel>? images,
  }) = _HotelDto;

  factory HotelDto.fromJson(Map<String, dynamic> json) =>
      _$HotelDtoFromJson(json);

  HotelModel toDomain() {
    return HotelModel(
      id: id ?? -1,
      title: title ?? '',
      description: description  ?? '',
      price: price  ?? '',
      city: city  ?? '',
      country: country  ?? '',
      type: type  ?? '',
      images: images ?? [],
    );
  }
}
