import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/features/widgets/button_ui.dart';
import 'package:spots_xplorer_app/features/widgets/ui/textfield_ui.dart';

class SignupForm extends ConsumerWidget {
  SignupForm({super.key});
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text field for Name
          Text(
            'Nom',
            style: GoogleFonts.openSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),

          TextFieldUI(
            hintText: 'Entrez votre nom',
            keyBoardType: TextInputType.name,
            onChanged: (value) {
              ref.read(loginRepositoryProvider.notifier).setName(value);
            },
          ),
          // Text field for Prenom
          const SizedBox(height: 16),
          Text(
            'Prenom',
            style: GoogleFonts.openSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          TextFieldUI(
            hintText: 'Entrez votre prenom',
            keyBoardType: TextInputType.name,
            onChanged: (value) {
              ref.read(loginRepositoryProvider.notifier).setPrenom(value);
            },
          ),
          // Text field for Email
          const SizedBox(height: 16),
          Text(
            'Email',
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
            onChanged: (value) {
              ref.read(loginRepositoryProvider.notifier).setEmail(value);
            },
          ),
          // Text field for Password
          const SizedBox(height: 16),
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
          const SizedBox(height: 20),
          ButtonUi(
            text: 'S\'inscrire',
            isLoading: ref.watch(loginRepositoryProvider).loading,
            onPressed: () async {
              if (_key.currentState!.validate()) {
                await ref
                    .read(loginRepositoryProvider.notifier)
                    .signUpWithEmailAndPassword();
              }
            },
          ),
        ],
      ),
    );
  }
}
