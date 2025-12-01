import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/domain/failure.dart';
import 'package:spots_xplorer_app/core/models/user_model.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(UserModel user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.failure(Failure failure) = _Failure;
  const factory AuthState.providerCreated() = _ProviderCreated;
  const factory AuthState.oAuthAuthenticated(UserModel user) = _OAuthAuthenticated;
  const factory AuthState.oAuthUnauthenticated() = _OAuthUnauthenticated;
  const factory AuthState.roleUpdated(UserModel user) = _RoleUpdated;
  const factory AuthState.providerCompleted() = _ProviderCompleted;
}
