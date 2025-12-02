import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';

part 'wishlist.freezed.dart';
part 'wishlist.g.dart';

@freezed
class Wishlist with _$Wishlist {
  const factory Wishlist({
    required String id,               // unique id
    required String name,             // list name
    required String image,            // preview image (asset or network)
    @Default([]) List<EventModel> events,  // items inside the list
  }) = _Wishlist;

  factory Wishlist.fromJson(Map<String, dynamic> json) =>
      _$WishlistFromJson(json);
}
