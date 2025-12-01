import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/notification_repository.dart';
import 'package:spots_xplorer_app/core/services/profile_repository.dart';
import 'package:spots_xplorer_app/features/widgets/button_ui.dart';
import 'package:spots_xplorer_app/features/widgets/ui/textfield_ui.dart';

class UpdatePass extends ConsumerStatefulWidget {
  const UpdatePass({super.key});

  @override
  ConsumerState<UpdatePass> createState() => _UpdatePassState();
}

class _UpdatePassState extends ConsumerState<UpdatePass> {
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Form(
          key: _key,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Connexion et sécurité',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              TextFieldUI(
                hintText: 'Nouveau mot de passe',
                keyBoardType: TextInputType.visiblePassword,
                controller: _passController,
                isPassword: true,
              ),
              SizedBox(height: 16.h),
              TextFieldUI(
                hintText: 'Confirmer le mot de passe',
                keyBoardType: TextInputType.visiblePassword,
                controller: _confirmPassController,
                isPassword: true,
              ),
              SizedBox(height: 32.h),
              ButtonUi(
                color: AppColors.primary,
                text: 'Modifier le mot de passe',
                isLoading: ref.watch(profileRepositoryProvider).isLoading,
                onPressed: () async {
                  if (_key.currentState!.validate()) {
                    if (_passController.text != _confirmPassController.text) {
                      ref
                          .read(notificationRepositoryProvider.notifier)
                          .showToastError(
                            position: Alignment.topCenter,
                            title: "Les mots de passe ne correspondent pas",
                          );
                      return;
                    }
                    await ref
                        .read(profileRepositoryProvider.notifier)
                        .updatePass(_passController.text);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
