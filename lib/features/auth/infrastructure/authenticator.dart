
import 'package:flutter/services.dart';
import 'package:spots_xplorer_app/core/infrastructure/helpers/repository_helper.dart';
import 'package:spots_xplorer_app/features/auth/infrastructure/auth_remote_service.dart';
import 'package:spots_xplorer_app/features/auth/infrastructure/tokens_storage/tokens_storage.dart';

class AuthRepository with RepositoryHelper {
  final AuthRemoteService _remoteService;
    final TokensStorage _tokensStorage;


  const AuthRepository(
    this._remoteService,
        this._tokensStorage,

  );

 Future<String?> getTokens() async {
    try {
      final tokensDto = await _tokensStorage.read();
      if (tokensDto != null) {
        return tokensDto;
      }
      return null;
    } on PlatformException {
      return null;
    }
  }
}
