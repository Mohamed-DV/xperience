import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/user_model.dart';

import 'tokens.dart';

part 'user_tokens.freezed.dart';

@freezed
class UserTokens with _$UserTokens {
  const UserTokens._();
  const factory UserTokens({
    required UserModel user,
    required Tokens tokens,
  }) = _UserTokens;
}
