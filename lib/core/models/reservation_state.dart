import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/activity_model.dart';
import 'package:spots_xplorer_app/core/models/compition_model.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/models/reservation_model.dart';

part 'reservation_state.freezed.dart';
part 'reservation_state.g.dart';

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState({
    @Default(false) bool isLoading,
    @Default(true) bool isLoadingReservation,

    @Default(false) bool isCancelLoading,

    @Default(0) int selectedId,
    @Default('') String selectedType,
    @Default('') String reservationDate,
    @Default('') String fromHour,
    @Default('') String toHour,
    @Default('') String totalPrice,
    @Default(0) int childrenCount,
    @Default(1) int adultsCount,
    @Default(0) int participantCount,
    @Default(false) bool isLanched,
    @Default([]) List<ReservationModel> reservations,
    @Default([]) List<ReservationModel> doAgainReservations,
    ReservationModel? selectedReservation,

    CompitionModel? compition,
    ActivityModel? activity,
    EventModel? event,
  }) = _ReservationState;

  factory ReservationState.fromJson(Map<String, Object?> json) =>
      _$ReservationStateFromJson(json);
}
