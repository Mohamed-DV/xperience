import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/features/widgets/button_ui.dart';
import 'package:spots_xplorer_app/features/widgets/ui/textfield_ui.dart';

class ForgetPassword extends ConsumerWidget {
  ForgetPassword({super.key});
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imgs/Accueil.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50.h),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white,
                              ),

                              child: const Icon(
                                Remix.arrow_left_line,
                                size: 25,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Mot de passe\noublié',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                height: 0,
                                fontSize: 36.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),

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
                            onChanged: (value) {
                              ref
                                  .read(loginRepositoryProvider.notifier)
                                  .setEmail(value);
                            },
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Nous vous enverrons un code de 4 chiffres pour réinitialiser votre mot de passe',
                            style: GoogleFonts.openSans(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 50),
                          ButtonUi(
                            text: 'Recevoir le code',
                            isLoading:
                                ref.watch(loginRepositoryProvider).loading,
                            onPressed: () async {
                              if (_formkey.currentState!.validate()) {
                                await ref
                                    .read(loginRepositoryProvider.notifier)
                                    .resetPassword();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
