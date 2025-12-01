import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/authenticator.dart';
import 'auth_notifier.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._authenticator) : super(const AuthState.initial());

  final AuthRepository _authenticator;

}
