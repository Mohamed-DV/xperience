import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/features/auth/presentation/sigin_form.dart';

class SiginScreen extends ConsumerStatefulWidget {
  const SiginScreen({super.key});

  @override
  ConsumerState<SiginScreen> createState() => _SiginScreenState();
}

class _SiginScreenState extends ConsumerState<SiginScreen> {
  @override
  Widget build(BuildContext context) {
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
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    // image: DecorationImage(
                    //   image: AssetImage('assets/imgs/Accueil.png'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 70.h),
                        Text(
                          'Se Connecter',
                          style: GoogleFonts.montserrat(
                            fontSize: 36.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 50),
                        SiginForm(),
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Vous n\'avez pas de compte?',
                            style: GoogleFonts.openSans(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            context.push(Routes.signup);
                          },
                          child: Text(
                            'Créer un compte',
                            style: GoogleFonts.openSans(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1.5,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'OU',
                              style: GoogleFonts.openSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                height: 1.5,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: builMethodButton(
                                'Google',
                                'assets/icons/google.png',
                                () =>
                                    ref
                                        .read(loginRepositoryProvider.notifier)
                                        .signInWithGoogle(),
                                ref
                                    .watch(loginRepositoryProvider)
                                    .isGoogleloading,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: builMethodButton(
                                'Facebook',
                                'assets/icons/facebook.png',
                                () {},
                                false,
                                //  () =>
                                //       ref
                                //           .read(loginRepositoryProvider.notifier)
                                //           .signInWithFacebook(),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 90),
                          child: builMethodButton(
                            'Apple',
                            "assets/icons/apple.png",
                            () {
                              // Handle Apple sign-in
                            },
                            false,
                          ),
                        ),
                        // SizedBox(height: 60.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget builMethodButton(
    String title,
    String image,
    Function onPressed,
    bool isLoading,
  ) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(6),
        ),
        child:
            isLoading
                ? const Center(
                  child: CircularProgressIndicator(color: AppColors.white),
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(image, width: 23, height: 23),
                    const SizedBox(width: 10),
                    Text(
                      title,
                      style: GoogleFonts.openSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}
