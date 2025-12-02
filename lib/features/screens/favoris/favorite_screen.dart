// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:spots_xplorer_app/config/theme/app_colors.dart';
// import 'package:spots_xplorer_app/core/models/event_model.dart';
// import 'package:spots_xplorer_app/core/services/home_repository.dart';
// import 'package:spots_xplorer_app/features/widgets/activite_card.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:spots_xplorer_app/config/theme/app_colors.dart';
// import 'package:spots_xplorer_app/core/models/event_model.dart';
// import 'package:spots_xplorer_app/core/services/home_repository.dart';


// class FavoriteScreen extends ConsumerStatefulWidget {
//   const FavoriteScreen({super.key});

//   @override
//   ConsumerState<FavoriteScreen> createState() => _FavoriteScreenState();
// }

// class _FavoriteScreenState extends ConsumerState<FavoriteScreen> {
//   late Future<void> _favoritesFuture;

//   @override
//   void initState() {
//     super.initState();
//     _favoritesFuture = ref.read(homeRepositoryProvider.notifier).getFavoris();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           'Vos Coups De Coeur',
//           style: GoogleFonts.montserrat(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         centerTitle: false,
//       ),

//       body: FutureBuilder(
//         future: _favoritesFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(color: AppColors.primary),
//             );
//           }

//           if (snapshot.hasError) {
//             return Center(
//               child: Text(
//                 'Erreur: ${snapshot.error}',
//                 style: const TextStyle(color: Colors.red),
//               ),
//             );
//           }

//           final favoris = ref.watch(homeRepositoryProvider).favoris;

//           if (favoris.isEmpty) {
//             return Center(
//               child: Text(
//                 'Aucun favori trouvé',
//                 style: GoogleFonts.montserrat(
//                   fontSize: 16,
//                   color: Colors.grey,
//                 ),
//               ),
//             );
//           }

//           return _buildFavoritesGrid(favoris);
//         },
//       ),
//     );
//   }

//   // 🟣 GRID EXACT FIGMA
//   Widget _buildFavoritesGrid(List<EventModel> events) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       child: GridView.builder(
//         itemCount: events.length,
//         shrinkWrap: true,
//         physics: const BouncingScrollPhysics(),

//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,           // 🔥 2 per row
//           mainAxisSpacing: 20,
//           crossAxisSpacing: 16,
//           childAspectRatio: 0.80,      // 🔥 PERFECT LIKE FIGMA
//         ),

//         itemBuilder: (context, index) {
//           return MiniFavoriteCard(event: events[index]);
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/models/wishlist.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:go_router/go_router.dart';

class MiniFavoriteCard extends StatelessWidget {
  final EventModel event;

  const MiniFavoriteCard({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(30, 0, 0, 0),
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      clipBehavior: Clip.none,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // IMAGE
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              event.images.first.image,
              width: 160,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),

          // TEXT ZONE
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  event.country != null ? event.country! : 'Lieu inconnu',
                  style: GoogleFonts.openSans(
                    fontSize: 11,
                    color: Colors.grey,
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


class FavoriteScreen extends ConsumerWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlists = ref.watch(homeRepositoryProvider).wishlists;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Vos Listes',
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: wishlists.isEmpty
          ? Center(
              child: Text(
                "Vous n’avez aucune liste",
                style: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
            )
          : _buildWishlistGrid(context, wishlists),
    );
  }

  // --------------------------
  // GRID OF WISHLISTS (Airbnb)
  // --------------------------
  Widget _buildWishlistGrid(BuildContext context, List<Wishlist> lists) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: GridView.builder(
        itemCount: lists.length,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 16,
          childAspectRatio: 0.70,
        ),
        itemBuilder: (context, index) {
          return WishlistCard(list: lists[index]);
        },
      ),
    );
  }
}



class WishlistCard extends ConsumerWidget {
  final Wishlist list;

  const WishlistCard({super.key, required this.list});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final previewImg = list.events.isNotEmpty
        ? list.events.first.images.first.image
        : list.image; // fallback asset

    return GestureDetector(
      onTap: () {
        context.push('/wishlist-details', extra: list);
      },
      child: Container(
       // height: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE TOP
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(14.r)),
              child: Image.network(
                previewImg,
                height: 120.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            // TEXT ZONE
            Expanded(
              child: 
            Padding(
              padding: EdgeInsets.all(10.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    list.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "${list.events.length} éléments",
                    style: GoogleFonts.openSans(
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
