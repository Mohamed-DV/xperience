import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  late final PageController _imageController;
  late final PageController _textController;
  late int _currentPage;
  bool _isSyncing = false;
  @override
  void initState() {
    super.initState();
    _imageController = PageController();
    _textController = PageController();
    _currentPage = 0;
    _imageController.addListener(() {
      if (_isSyncing) return;
      _isSyncing = true;
      if (_imageController.hasClients &&
          _imageController.page != _textController.page) {
        _imageController.position.jumpTo(_textController.position.pixels);
      }
      setState(() {
        _currentPage = _textController.page!.round();
      });
      _isSyncing = false;
    });

    _textController.addListener(() {
      if (_isSyncing) return;
      _isSyncing = true;
      if (_imageController.hasClients &&
          _imageController.page != _textController.page) {
        _imageController.position.jumpTo(_textController.position.pixels);
      }
      setState(() {
        _currentPage = _textController.page!.round();
      });
      _isSyncing = false;
    });
  }

  @override
  void dispose() {
    _imageController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.6,
              child: PageView(
                controller: _imageController,
                children: [
                  SizedBox(
                    height: height * 0.6,
                    child: Image.asset(
                      "assets/imgs/bording1.png",
                      width: double.infinity,
                      height: height * 0.6,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.6,
                    child: Image.asset(
                      "assets/imgs/bording2.png",
                      width: double.infinity,
                      height: height * 0.6,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.6,
                    child: Image.asset(
                      "assets/imgs/bording3.png",
                      width: double.infinity,
                      height: height * 0.6,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.6,
                    child: Image.asset(
                      "assets/imgs/bording4.png",
                      width: double.infinity,
                      height: height * 0.6,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            SmoothPageIndicator(
              controller: _imageController,
              count: 4,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColors.background,
                dotColor: AppColors.background.withOpacity(0.4),
                dotHeight: 10,
                dotWidth: 10,
                spacing: 5,
                expansionFactor: 4,
              ),
            ),
            SizedBox(height: height * 0.02),
            Expanded(
              child: PageView(
                controller: _textController,
                children: const [
                  OnBordingUI(
                    title: 'SPOTS',
                    description:
                        'Imergez-vous dans les paysages luxuriants et colorés des îles',
                  ),
                  OnBordingUI(
                    title: 'XPLOREZ',
                    description:
                        'Les plus belles émotions, les expériences les plus passionnantes sont à vivre ici',
                  ),
                  OnBordingUI(
                    title: 'PLANIFIEZ',
                    description:
                        'Activités, location, transport, hébergement et restauration à proximité',
                  ),
                  OnBordingUI(
                    title: 'PARTAGEZ',
                    description:
                        'Evaluez, faites profiter de votre expérience, devenez un expert',
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
                vertical: height * 0.01,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (_currentPage != 0)
                    GestureDetector(
                      onTap: () {
                        if (_textController.page == 0) {
                          context.go(Routes.sigin);
                        }
                        _textController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text(
                        'Précédent',
                        style: GoogleFonts.montserrat(
                          fontSize: 18.sp,
                          color: AppColors.primaryGrey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (_textController.page == 3) {
                        ref
                            .read(loginRepositoryProvider.notifier)
                            .setFirstOpen();
                        context.go(Routes.sigin);
                      }
                      _textController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text(
                      _currentPage == 3 ? 'Je m\'inscris' : 'Suivant',
                      style: GoogleFonts.openSans(
                        fontSize: 20.sp,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.025),
          ],
        ),
      ),
    );
  }
}

class OnBordingUI extends StatelessWidget {
  final String title;
  final String description;
  const OnBordingUI({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.montserratAlternates(
            fontSize: 40.sp,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            fontSize: 20.sp,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
