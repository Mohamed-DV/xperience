import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/features/widgets/button_ui.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  @override
  ConsumerState<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  Timer? _timer;
  int _start = 60;
  bool _canResend = true;
  String otp = '';
  final errorController = StreamController<ErrorAnimationType>();
  void startTimer() {
    setState(() {
      _canResend = false;
      _start = 60;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          _canResend = true;
        });
        timer.cancel();
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  String get timerText {
    final minutes = (_start ~/ 60).toString().padLeft(2, '0');
    final seconds = (_start % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  void dispose() {
    _timer?.cancel();
    errorController.close();
    super.dispose();
  }

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                    'Vérification\ndu code',
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

                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          ref.watch(loginRepositoryProvider).email,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                            height: 0,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.lightPink800,
                          ),
                        ),
                      ),

                      Text(
                        'Changer',
                        style: GoogleFonts.montserrat(
                          height: 0,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.lightPink800,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Veuillez entrer le code à 6 chiffres que nous avons envoyé à votre adresse e-mail',
                  style: GoogleFonts.openSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: PinCodeTextField(
                    errorAnimationController: errorController,
                    autoFocus: true,
                    keyboardType: TextInputType.number,
                    enableActiveFill: true,
                    pinTheme: PinTheme(
                      fieldHeight: 48,
                      fieldWidth: 48,
                      activeFillColor: AppColors.white,
                      inactiveFillColor: AppColors.white,
                      selectedFillColor: AppColors.white,
                      inactiveColor: Colors.grey.shade200,
                      activeColor: AppColors.primary,
                      selectedColor: AppColors.primary,
                      shape: PinCodeFieldShape.box,

                      borderRadius: BorderRadius.circular(10),
                    ),
                    cursorColor: Colors.black,
                    appContext: context,
                    onChanged: (value) {
                      otp = value;
                    },
                    length: 4,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ),

                const SizedBox(height: 16),
                ButtonUi(
                  isLoading: ref.watch(loginRepositoryProvider).loading,
                  onPressed: () async {
                    if (otp.isNotEmpty && otp.length == 4) {
                      print('enter');
                      ref
                          .read(loginRepositoryProvider.notifier)
                          .verfiyOtp(otp)
                          .then((val) {
                            if (val == 0) {
                              errorController.add(ErrorAnimationType.shake);
                            }
                          });
                    }
                  },
                  text: 'Valider le code',
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap:
                      _canResend
                          ? () {
                            ref
                                .read(loginRepositoryProvider.notifier)
                                .resendOtp();

                            startTimer();
                          }
                          : null,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      _canResend
                          ? ' Renvoyer le code'
                          : ' Renvoyer dans $timerText',
                      style: GoogleFonts.openSans(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: _canResend ? Colors.white : Colors.white54,
                      ),
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
}
