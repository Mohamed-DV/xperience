// file: media_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_model.freezed.dart';

@freezed
class MediaModel with _$MediaModel {
  const MediaModel._();
  
  const factory MediaModel({
    required int id,
    required int size,
    required String url,
    required String mimeType,
  }) = _MediaModel;
  
  factory MediaModel.empty() => const MediaModel(
    id: 0,
    size: 0,
    url: "",
    mimeType: "",
  );
  
  // Convenience getters
  bool get isImage => mimeType.startsWith('image/');
  bool get isVideo => mimeType.startsWith('video/');
  bool get isDocument => mimeType.startsWith('application/');
  
  // Format size in KB or MB
  String get formattedSize {
    if (size < 1024 * 1024) {
      return '${(size / 1024).toStringAsFixed(2)} KB';
    } else {
      return '${(size / (1024 * 1024)).toStringAsFixed(2)} MB';
    }
  }
}
