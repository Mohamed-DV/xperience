import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/features/home/presentation/widgets/hotel_card.dart';
import 'package:spots_xplorer_app/features/home/presentation/widgets/resto_card.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';

class RestaurantScreen extends ConsumerStatefulWidget {
  const RestaurantScreen({super.key});

  @override
  ConsumerState<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends ConsumerState<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 38,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 10.0,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  dividerColor: Colors.transparent,
                  indicator: const BoxDecoration(
                    color: AppColors.black,
                    gradient: LinearGradient(
                      colors: [AppColors.primaryPink, AppColors.secondaryPink],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    _tabItem(
                      context,
                      'assets/icons/Hosting.png',
                      'Hébergements',
                    ),
                    _tabItem(
                      context,
                      'assets/icons/Restaurant.png',
                      'Restauration',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: TabBarView(
                children: [OfferTabView(), OfferRestoTabView()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabItem(BuildContext context, String icon, String label) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          Image.asset(icon, width: width * 0.06, height: height * 0.04),
          const SizedBox(width: 4),

          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class OfferTabView extends ConsumerStatefulWidget {
  const OfferTabView({super.key});

  @override
  ConsumerState<OfferTabView> createState() => _OfferTabViewState();
}

class _OfferTabViewState extends ConsumerState<OfferTabView> {
  @override
  void initState() {
    Future.microtask(() {
      ref.read(myhomeNotifierProvider.notifier).getHotel();
    });
    super.initState();
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(myhomeNotifierProvider);
    final hotel = ref.watch(listhotelsProvider);
    state.maybeWhen(
      getHotelSuccess: (ho) {
        Future.microtask(() {
          ref.read(listhotelsProvider.notifier).state = ho;
        });
        setState(() {
          isLoading = false;
        });
      },
      failure: (failure) => const Center(child: Text('Failed to load hotels')),
      initial:
          () => setState(() {
            isLoading = true;
          }),
      orElse: () => {},
    );
    return isLoading
        ? const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        )
        : ListView.builder(
          padding: const EdgeInsets.only(left: 12, bottom: 16),
          itemCount: hotel.length,
          itemBuilder: (context, index) {
            final resto = hotel[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: HotelCard(hotel: resto),
            );
          },
        );
  }
  // {
  //   final state = ref.watch(myhomeNotifierProvider);

  //   return state.maybeWhen(
  //     initial: () => const Center(child: CircularProgressIndicator()),
  //     getHotelSuccess: (hotel) {
  //       return ListView.builder(
  //         padding: const EdgeInsets.only(left: 12, bottom: 16),
  //         itemCount: hotel.length,
  //         itemBuilder: (context, index) {
  //           final data = hotel[index];
  //           return Padding(
  //             padding: const EdgeInsets.only(bottom: 12),
  //             child: HotelCard(hotel: data),
  //           );
  //         },
  //       );
  //     },
  //     failure: (failure) => const Center(child: Text('Failed to load hotels')),
  //     orElse: () => const SizedBox(),
  //   );
  // }
}

class OfferRestoTabView extends ConsumerStatefulWidget {
  const OfferRestoTabView({super.key});

  @override
  ConsumerState<OfferRestoTabView> createState() => _OfferRestoTabViewState();
}

class _OfferRestoTabViewState extends ConsumerState<OfferRestoTabView> {
  @override
  void initState() {
    Future.microtask(() {
      ref.read(myhomeNotifierProvider.notifier).getRestaurant();
    });
    super.initState();
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(myhomeNotifierProvider);
    final resturant = ref.watch(listrestaurantProvider);
    state.maybeWhen(
      getResruantSuccess: (resturant) {
        Future.microtask(() {
          ref.read(listrestaurantProvider.notifier).state = resturant;
        });
        setState(() {
          isLoading = false;
        });
      },
      failure: (failure) => const Center(child: Text('Failed to load hotels')),
      initial:
          () => setState(() {
            isLoading = true;
          }),
      orElse: () => {},
    );
    return isLoading
        ? const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        )
        : ListView.builder(
          padding: const EdgeInsets.only(left: 12, bottom: 16),
          itemCount: resturant.length,
          itemBuilder: (context, index) {
            final resto = resturant[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: RestoCard(resto: resto),
            );
          },
        );
  }
}
