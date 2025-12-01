import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/user_model.dart';
import 'package:spots_xplorer_app/features/auth/domain/token.dart';

import 'tokens.dart';

part 'auth_response.freezed.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const AuthResponse._();
  const factory AuthResponse({
    required Token token,
    required UserModel user,
  }) = _AuthResponse;
}
