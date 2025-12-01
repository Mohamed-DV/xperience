import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/activites_model.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/models/user_model.dart';

part 'profile_state.freezed.dart';
part 'profile_state.g.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingDetails,
    @Default(false) bool isLoadingReview,

    @Default(null) UserModel? user,
    @Default(0) int? countReservations,
    @Default(0) int? countReviews,
  }) = _ProfileState;

  factory ProfileState.fromJson(Map<String, Object?> json) =>
      _$ProfileStateFromJson(json);
}
