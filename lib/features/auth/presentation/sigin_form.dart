import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/features/widgets/button_ui.dart';
import 'package:spots_xplorer_app/features/widgets/ui/textfield_ui.dart';

class SiginForm extends ConsumerStatefulWidget {
  const SiginForm({super.key});

  @override
  ConsumerState<SiginForm> createState() => _SiginFormState();
}

class _SiginFormState extends ConsumerState<SiginForm> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadSavedEmail();
  }

  Future<void> _loadSavedEmail() async {
    final prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString('saved_email');
    if (savedEmail != null && mounted) {
      _emailController.text = savedEmail;
      // optionally update Riverpod state too:
      ref.read(loginRepositoryProvider.notifier).setEmail(savedEmail);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Adresse email',
            style: GoogleFonts.openSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          TextFieldUI(
            hintText: 'Entrez votre email',
            keyBoardType: TextInputType.emailAddress,
            controller: _emailController,
            onChanged: (value) {
              ref.read(loginRepositoryProvider.notifier).setEmail(value);
            },
          ),
          const SizedBox(height: 20),
          Text(
            'Mot de passe',
            style: GoogleFonts.openSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          TextFieldUI(
            hintText: 'Mot de passe',
            isPassword: true,
            keyBoardType: TextInputType.visiblePassword,
            onChanged: (value) {
              ref.read(loginRepositoryProvider.notifier).setPassword(value);
            },
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => context.push(Routes.forgetPassword),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Mot de passe oublié?',
                  style: GoogleFonts.openSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ButtonUi(
            text: 'Se Connecter',
            isLoading: ref.watch(loginRepositoryProvider).loading,
            onPressed: () async {
              if (_key.currentState!.validate()) {
                await ref
                    .read(loginRepositoryProvider.notifier)
                    .signInWithEmailAndPassword();
              }
            },
          ),
        ],
      ),
    );
  }
}
