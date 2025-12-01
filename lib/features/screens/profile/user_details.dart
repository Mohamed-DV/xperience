import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/user_model.dart';
import 'package:spots_xplorer_app/core/services/profile_repository.dart';
import 'package:spots_xplorer_app/features/widgets/button_ui.dart';
import 'package:spots_xplorer_app/features/widgets/ui/textfield_ui.dart';

class UserDetailsScreen extends ConsumerStatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  ConsumerState<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends ConsumerState<UserDetailsScreen> {
  // Controllers for each field
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _birthDateController = TextEditingController();

  // Track which fields are in edit mode
  final Map<String, bool> _editModeFields = {
    'name': false,
    'firstName': false,
    'lastName': false,
    'email': false,
    'phone': false,
    'birthDate': false,
  };

  @override
  void initState() {
    super.initState();
    // Initialize controllers with user data when available
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeControllers();
    });
  }

  void _initializeControllers() {
    final profileState = ref.read(profileRepositoryProvider);
    if (profileState.user != null) {
      _firstNameController.text = profileState.user!.firstName ?? '';
      _lastNameController.text = profileState.user!.lastName ?? '';
      _emailController.text = profileState.user!.email ?? '';
      _phoneController.text = profileState.user!.phone ?? '';
      _birthDateController.text =
          profileState.user!.birthDate != null
              ? _formatDate(profileState.user!.birthDate!)
              : '';
    }
  }

  @override
  void dispose() {
    // Dispose controllers
    _nameController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _birthDateController.dispose();
    super.dispose();
  }

  void _toggleEditMode(String fieldKey, UserModel? user) {
    if (_editModeFields[fieldKey] == true) {
      // Save changes
      ref
          .read(profileRepositoryProvider.notifier)
          .updateUser(
            user!.copyWith(
              firstName: _firstNameController.text,
              lastName: _lastNameController.text,
              email: _emailController.text,
              phone: _phoneController.text,
              birthDate: _birthDateController.text,
            ),
          );
    }
    setState(() {
      _editModeFields[fieldKey] = !_editModeFields[fieldKey]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(profileRepositoryProvider);

    // Update controllers when profile data changes
    if (profileState.user != null) {
      _firstNameController.text = profileState.user!.firstName ?? '';
      _lastNameController.text = profileState.user!.lastName ?? '';
      _emailController.text = profileState.user!.email ?? '';
      _phoneController.text = profileState.user!.phone ?? '';
      _birthDateController.text =
          profileState.user!.birthDate != null
              ? _formatDate(profileState.user!.birthDate!)
              : '';
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body:
      // Content
      Column(
        children: [
          // Custom AppBar
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                children: [
                  Text(
                    'Infos personnelles',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Content
          Expanded(
            child:
                profileState.isLoading
                    ? const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    )
                    : SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 40.h),

                          // First Name Field
                          _buildEditableField(
                            'Prénom',
                            'firstName',
                            _firstNameController,
                            'Entrez votre prénom',
                            TextInputType.text,
                          ),

                          // Last Name Field
                          _buildEditableField(
                            'Nom de famille',
                            'lastName',
                            _lastNameController,
                            'Entrez votre nom de famille',
                            TextInputType.text,
                          ),

                          // Email Field
                          _buildEditableField(
                            'Email',
                            'email',
                            _emailController,
                            'Entrez votre email',
                            TextInputType.emailAddress,
                          ),

                          // Phone Field
                          _buildEditableField(
                            'Téléphone',
                            'phone',
                            _phoneController,
                            'Entrez votre téléphone',
                            TextInputType.phone,
                          ),

                          // Birth Date Field
                          _buildEditableField(
                            'Date de naissance',
                            'birthDate',
                            _birthDateController,
                            'Entrez votre date de naissance',
                            TextInputType.datetime,
                          ),

                          SizedBox(height: 40.h),

                          // Edit Button
                          // SizedBox(
                          //   width: double.infinity,
                          //   child: Container(
                          //     height: 50.h,
                          //     decoration: BoxDecoration(
                          //       color: Colors.white.withOpacity(0.9),
                          //       borderRadius: BorderRadius.circular(6.r),
                          //     ),
                          //     child: ElevatedButton(
                          //       onPressed: () {
                          //         // Navigate to edit profile page
                          //         // Navigator.push(context, MaterialPageRoute(builder: (_) => EditProfilePage()));
                          //       },
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Colors.transparent,
                          //         shadowColor: Colors.transparent,
                          //         shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(
                          //             6.r,
                          //           ),
                          //         ),
                          //       ),
                          //       child: Text(
                          //         'Modifier le Profil',
                          //         style: GoogleFonts.openSans(
                          //           fontSize: 16.sp,
                          //           fontWeight: FontWeight.w700,
                          //           color: Colors.black,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                    ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditableField(
    String label,
    String fieldKey,
    TextEditingController controller,
    String hintText,
    TextInputType keyboardType,
  ) {
    final profileState = ref.watch(profileRepositoryProvider);

    final isEditMode = _editModeFields[fieldKey] ?? false;

    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: GoogleFonts.openSans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () => _toggleEditMode(fieldKey, profileState.user),
                child: Text(
                  isEditMode ? 'Sauvegarder' : 'Modifier',
                  style: GoogleFonts.openSans(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: isEditMode ? Colors.green : AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          TextFieldUI(
            hintText: hintText,
            keyBoardType: keyboardType,
            controller: controller,
            readOnly: !isEditMode,
          ),
          Divider(height: 16.h),
        ],
      ),
    );
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
    } catch (e) {
      return dateString; // Return original string if parsing fails
    }
  }
}
