import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/models/wishlist.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/details_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/select_date_reservation_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/button_lunch.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/button_on_lunch.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/image_card.dart';
import 'package:spots_xplorer_app/main.dart';

class ActivityDetailsScreen extends ConsumerStatefulWidget {
  final bool isFromReserved;
  const ActivityDetailsScreen({super.key, required this.isFromReserved});

  @override
  ConsumerState<ActivityDetailsScreen> createState() =>
      _ActivityDetailsScreenState();
}

class _ActivityDetailsScreenState extends ConsumerState<ActivityDetailsScreen> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(reservationRepositoryProvider.notifier).getReservationById();
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedEvent = ref.watch(reservationRepositoryProvider).activity;
    final reservationState = ref.watch(reservationRepositoryProvider);

    return Scaffold(
      bottomNavigationBar: ref.watch(reservationRepositoryProvider).isLanched ||
              reservationState.isLoadingReservation ||
              selectedEvent?.isReserved == false
          ? null
          : Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: Row(
                children: [
                  if (reservationState.selectedReservation!.isCancelled == true)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            ref
                                .read(reservationRepositoryProvider.notifier)
                                .cancelReservation();
                          },
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              color: AppColors.primary,
                              width: 2,
                            ),
                            elevation: 0,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            ref
                                    .watch(reservationRepositoryProvider)
                                    .isCancelLoading
                                ? "Chargement ..."
                                : 'Annuler la réservation',
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (reservationState.selectedReservation!.isUpdated == true)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            ref
                                .read(reservationRepositoryProvider.notifier)
                                .setLanched(true);
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: AppColors.primary,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            'Modifier',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
      body: selectedEvent == null
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .4,
                  child: Image.network(
                    selectedEvent.images[_selectedIndex].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.08,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              ref
                                  .read(
                                    reservationRepositoryProvider.notifier,
                                  )
                                  .onBack();
                              context.pop();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: AppColors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Remix.arrow_left_line),
                            ),
                          ),
                          const Spacer(),
                          if (ref
                                  .watch(homeRepositoryProvider)
                                  .selectedEvent!
                                  .isFav !=
                              null)
                            GestureDetector(
                              onTap: () {
                                onFavoriteTap(ref
                                    .watch(homeRepositoryProvider)
                                    .selectedEvent!);
                                // ref
                                //     .read(homeRepositoryProvider.notifier)
                                // .favorisToggle(
                                //   type:
                                //       ref
                                //           .watch(homeRepositoryProvider)
                                //           .selectedEvent!
                                //           .eventType,
                                //   id:
                                //       ref
                                //           .watch(homeRepositoryProvider)
                                //           .selectedEvent!
                                //           .id,
                                // );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: ref
                                          .watch(homeRepositoryProvider)
                                          .selectedEvent!
                                          .isFav!
                                      ? Colors.red
                                      : AppColors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/icons/carbon_location-heart.png',
                                  width: 25,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.30,
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectedEvent.images.length,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Center(
                            child: ImageCard(
                              url: selectedEvent.images[index].image,
                              selectedIndex: _selectedIndex,
                              index: index,
                              onPressed: () => setState(() {
                                _selectedIndex = index;
                              }),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                ref.watch(reservationRepositoryProvider).isLanched
                    ? SelectDateReservationScreen(
                        totalPrice: selectedEvent.price,
                        reservationId: selectedEvent.id,
                        reservationType: selectedEvent.eventType,
                        forUpdate: selectedEvent.isReserved ?? false,
                      )
                    : Stack(
                        children: [
                          DetailsScreen(null, selectedEvent, null),
                          (selectedEvent.isReserved ?? false)
                              // &&
                              //         widget.isFromReserved
                              ? const ButtonOnLunch()
                              : ButtonLunch(
                                  price: selectedEvent.price,
                                  subtitle: 'par personne',
                                  onPressed: () {
                                    ref
                                        .read(
                                          reservationRepositoryProvider
                                              .notifier,
                                        )
                                        .setReservationDate(DateTime.now());

                                    ref
                                        .read(
                                          reservationRepositoryProvider
                                              .notifier,
                                        )
                                        .setLanched(true);
                                  },
                                ),
                        ],
                      ),
              ],
            ),
    );
  }

void onFavoriteTap(EventModel event) {
  final isFav = event.isFav ?? false;

  if (isFav) {
    // REMOVE FROM FAVORITES
    ref.read(homeRepositoryProvider.notifier).removeFromAllLists(event);
    return;
  }

  // ADD TO FAVORITES (popup)
  final lists = ref.read(homeRepositoryProvider).wishlists;

  if (lists.isEmpty) {
    _showCreateListModal(event);
  } else {
    _showChooseListModal(event, lists);
  }
}



  Future<void> _showCreateListModal(EventModel event) async {
    final controller = TextEditingController();

    showModalBottomSheet(
      context: MainApp.navigationKey.currentContext!,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Créer une liste", style: TextStyle(fontSize: 20)),
              SizedBox(height: 12),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Nom de la liste",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final listName = controller.text.trim();
                  if (listName.isEmpty) return;

                  ref
                      .read(homeRepositoryProvider.notifier)
                      .createWishlist(listName, event);

                  Navigator.pop(context);
                },
                child: Text("Créer"),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _showChooseListModal(
      EventModel event, List<Wishlist> lists) async {
    showModalBottomSheet(
      context: MainApp.navigationKey.currentContext!,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Créer une nouvelle liste"),
              onTap: () {
                Navigator.pop(context);
                _showCreateListModal(event);
              },
            ),
            Divider(),
            for (var list in lists)
              ListTile(
                leading: Image.asset(list.image, width: 30),
                title: Text(list.name),
                subtitle: Text("${list.events.length} éléments"),
                onTap: () {
                  ref
                      .read(homeRepositoryProvider.notifier)
                      .addEventToList(list.id, event);

                  Navigator.pop(context);
                },
              ),
          ],
        );
      },
    );
  }
}
