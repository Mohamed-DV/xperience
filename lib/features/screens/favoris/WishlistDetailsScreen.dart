import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/core/models/wishlist.dart';
import 'package:spots_xplorer_app/features/screens/favoris/favorite_screen.dart';


class WishlistDetailsScreen extends StatelessWidget {
  final Wishlist list;

  const WishlistDetailsScreen({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          list.name,
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: list.events.isEmpty
          ? Center(
              child: Text(
                "Cette liste est vide",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                itemCount: list.events.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.80,
                ),
                itemBuilder: (context, index) {
                  return MiniFavoriteCard(event: list.events[index]);
                },
              ),
            ),
    );
  }
}
