import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';

part 'compition_model.freezed.dart';
part 'compition_model.g.dart';

@freezed
class CompitionModel with _$CompitionModel {
  const factory CompitionModel({
    required int id,
    required String title,
    required String description,
    required double distance,
    required String meetDate,
    required String meetAddress,
    required String meetCity,
    required String meetCountry,
    required String eventType,
    required List<ImageModel> images,
    required String price,
    bool? isReserved,
    String? email,
    String? phone,
    String? website,
    bool? isFav,
  }) = _CompitionModel;

  factory CompitionModel.fromJson(Map<String, Object?> json) =>
      _$CompitionModelFromJson(json);

  factory CompitionModel.empty() => const CompitionModel(
    id: 0,
    title: '',
    description: '',
    distance: 0.0,
    meetDate: '',
    meetAddress: '',
    meetCity: '',
    meetCountry: '',
    eventType: '',
    images: [],
    price: '',
    isReserved: false,
  );
}
