import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:spots_xplorer_app/core/shared/providers.dart';
import 'package:spots_xplorer_app/features/auth/application/auth_notifier.dart';
import 'package:spots_xplorer_app/features/auth/application/auth_states.dart';
import 'package:spots_xplorer_app/features/auth/infrastructure/auth_remote_service.dart';
import 'package:spots_xplorer_app/features/auth/infrastructure/authenticator.dart';
import 'package:spots_xplorer_app/features/auth/infrastructure/dio_interceptor.dart';
import 'package:spots_xplorer_app/features/auth/infrastructure/tokens_storage/secure_tokens_storage.dart';
import 'package:spots_xplorer_app/features/auth/infrastructure/tokens_storage/tokens_storage.dart';

final secureTokensStorageProvider = Provider<TokensStorage>(
  (ref) => SecureTokensStorage(ref.watch(flutterSecureStorageProvider)),
);
final remoteServiceProvider = Provider<AuthRemoteService>(
  (ref) => AuthRemoteService(ref.watch(dioProvider)),
);
final authenticatorProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(
    ref.watch(remoteServiceProvider),
    ref.watch(secureTokensStorageProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(authenticatorProvider)),
);
final dioInterceptorProvider = Provider<DioInterceptor>(
  (ref) => DioInterceptor(ref.watch(authenticatorProvider)),
);
