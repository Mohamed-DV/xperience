import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/notification_repository.dart';
import 'package:spots_xplorer_app/core/services/profile_repository.dart';
import 'package:spots_xplorer_app/features/widgets/button_ui.dart';
import 'package:spots_xplorer_app/features/widgets/ui/textfield_ui.dart';

class AddReviewModal extends ConsumerStatefulWidget {
  final Function(String comment, int rating)? onSubmit;

  const AddReviewModal({super.key, this.onSubmit});

  @override
  ConsumerState<AddReviewModal> createState() => _AddReviewModalState();
}

class _AddReviewModalState extends ConsumerState<AddReviewModal> {
  final _formKey = GlobalKey<FormState>();
  final _commentController = TextEditingController();
  int _selectedRating = 0;

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  void _handleStarTap(int rating) {
    setState(() {
      _selectedRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Add Review',
                      style: GoogleFonts.montserrat(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              // Form content
              Flexible(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Rating Section
                        Text(
                          'Rating',
                          style: GoogleFonts.openSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),

                        Container(
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                            color: Colors.grey[50],
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: Colors.grey[200]!),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(5, (index) {
                                  final starNumber = index + 1;
                                  return GestureDetector(
                                    onTap: () => _handleStarTap(starNumber),
                                    child: Container(
                                      padding: EdgeInsets.all(4.w),
                                      child: Icon(
                                        Icons.star_rounded,
                                        size: 40.sp,
                                        color:
                                            starNumber <= _selectedRating
                                                ? Colors.amber
                                                : Colors.grey[300],
                                      ),
                                    ),
                                  );
                                }),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                _getRatingText(),
                                style: GoogleFonts.openSans(
                                  fontSize: 14.sp,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Comment Section
                        Text(
                          'Commentaire',
                          style: GoogleFonts.openSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFieldUI(
                          hintText: 'Partagez votre expérience',
                          keyBoardType: TextInputType.multiline,
                          controller: _commentController,
                          maxLines: 4,
                          // Removed isPassword and maxLength as they don't make sense for a comment field
                        ),

                        const SizedBox(height: 32),
                        ButtonUi(
                          color: AppColors.primary,
                          text: 'Ajouter un avis',
                          isLoading:
                              ref
                                  .watch(profileRepositoryProvider)
                                  .isLoadingReview,
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              if (_selectedRating == 0) {
                                ref
                                    .read(
                                      notificationRepositoryProvider.notifier,
                                    )
                                    .showToastError(
                                      position: Alignment.topCenter,
                                      title: "Veuillez sélectionner une note",
                                    );
                                return; // Added return to prevent further execution
                              }

                              // Optional: Add your API call here
                              await ref
                                  .read(profileRepositoryProvider.notifier)
                                  .addReview(
                                    _commentController.text,
                                    _selectedRating,
                                  );
                            }
                          },
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getRatingText() {
    switch (_selectedRating) {
      case 1:
        return 'Médiocre';
      case 2:
        return 'Passable';
      case 3:
        return 'Bien';
      case 4:
        return 'Très bien';
      case 5:
        return 'Excellent';
      default:
        return 'Appuyez pour noter';
    }
  }
}

// Helper function to show the modal
void showAddReviewModal({
  required BuildContext context,
  Function(String comment, int rating)? onSubmit,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder:
        (context) => Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: AddReviewModal(onSubmit: onSubmit),
        ),
  );
}
