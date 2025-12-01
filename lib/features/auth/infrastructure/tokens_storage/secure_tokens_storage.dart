import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:spots_xplorer_app/features/auth/infrastructure/tokens_storage/tokens_storage.dart';

class SecureTokensStorage implements TokensStorage {
  final FlutterSecureStorage _storage;

  SecureTokensStorage(this._storage);

  static const _key = 'app_tokens';

  String? _cachedTokens;

  @override
  Future<String?> read() async {
    if (_cachedTokens != null) {
      return _cachedTokens;
    }
    final storedValue = await _storage.read(key: _key);

    if (storedValue == null) {
      return null;
    }

    return _cachedTokens = storedValue;
  }

  @override
  Future<void> save(String token) {
    _cachedTokens = token;

    return _storage.write(
      key: _key,
      value: token,
    );
  }

  @override
  Future<void> clear() {
    _cachedTokens = null;
    return _storage.delete(key: _key);
  }
}
