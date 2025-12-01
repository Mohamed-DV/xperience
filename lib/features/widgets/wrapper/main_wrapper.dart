import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
// local imports
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/config/theme/spacing.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';

class MainWrapper extends ConsumerStatefulWidget {
  const MainWrapper({super.key, required this.navShell});

  final StatefulNavigationShell navShell;

  @override
  ConsumerState<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends ConsumerState<MainWrapper> {
  int _selectedIndex = 0;

  @override
  void didUpdateWidget(covariant MainWrapper oldWidget) {
    if (widget.navShell.currentIndex != oldWidget.navShell.currentIndex) {
      setState(() {
        _selectedIndex = widget.navShell.currentIndex;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  void _goToScreen(int index) {
    widget.navShell.goBranch(
      index,
      initialLocation: index == widget.navShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, 
      backgroundColor: Colors.transparent,

      body: widget.navShell,

      bottomNavigationBar: SafeArea(
        child: Container(
          height: 60,
          margin: const EdgeInsets.only(bottom: 0), // بقا لتحت مزيان
          child: _buildBottomNavBar(),
        ),
      ),
    );
  }

  /// BOTTOM NAVBAR NORMAL (NOT FLOATING)
  Widget _buildBottomNavBar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0), // عادي بلا round
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.40), // شفاف شوية
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 10,
                offset: const Offset(0, -2),
              )
            ],
          ),
          child: Row(
            children: [
              _navItem(
                iconFill: 'assets/icons/search_fill.png',
                iconLine: 'assets/icons/search_line.png',
                label: 'Parcourir',
                index: 0,
              ),
              _navItem(
                iconFill: 'assets/icons/running_fill.png',
                iconLine: 'assets/icons/running_line.png',
                label: 'À refaire',
                index: 1,
              ),
              _navItem(
                iconFill: 'assets/icons/ticket_fill.png',
                iconLine: 'assets/icons/ticket_line.png',
                label: 'Réservations',
                index: 2,
              ),
              _navItem(
                iconFill: 'assets/icons/location_heart_fill.png',
                iconLine: 'assets/icons/location_heart_line.png',
                label: 'Mes Favoris',
                index: 3,
              ),
              _navItem(
                iconFill: 'assets/icons/profile_fill.png',
                iconLine: 'assets/icons/profile_line.png',
                label: 'Mon Profil',
                index: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// NAV ITEM
  Widget _navItem({
    required String iconFill,
    required String iconLine,
    required String label,
    required int index,
  }) {
    return Expanded(
      child: GestureDetector(
    onTap: () {
  setState(() => _selectedIndex = index);

  // --------------------------------------------------
  // 🔥 Remarque 2: User clicks "Parcourir" → reset home
  // --------------------------------------------------
  if (index == 0) {
    // Reset Home Type → HomeProvidersType.initial
    ref.read(homeTypeState.notifier).state = HomeProvidersType.initial;

    // Reset all search fields
    ref.read(homeRepositoryProvider.notifier).resetSearch();

    print("HOME RESET DONE — RETURN TO MAIN HOME");
  }

  _goToScreen(index);
},

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              _selectedIndex == index ? iconFill : iconLine,
              width: 24,
              height: 24,
            ),
            const SizedBox(height: Spacing.xxs),
            Text(
              label,
              style: TextStyle(
                color: _selectedIndex == index
                    ? AppColors.primary
                    : AppColors.blackSecondary,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
