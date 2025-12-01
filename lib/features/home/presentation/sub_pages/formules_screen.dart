import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spots_xplorer_app/features/home/domain/details_restaurant_model.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/button_lunch.dart';

class FormulesScreen extends ConsumerStatefulWidget {
  const FormulesScreen({super.key});

  @override
  ConsumerState<FormulesScreen> createState() => _FormulesScreenState();
}

class _FormulesScreenState extends ConsumerState<FormulesScreen> {
  @override
  void initState() {
    Future.microtask(() {
      // TO UnSelect the old Forms !
      ref.read(formsIdSelected.notifier).state = [];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final detailsResto = ref.watch(detailsRestoProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios, color: Colors.pink),
        ),
        title: Text(
          'Les Formules',
          style: GoogleFonts.montserrat(
            color: Colors.pink,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(12),
              children:
                  detailsResto.forms
                      .map(
                        (form) => FormuleCard(
                          isSelected: ref
                              .watch(formsIdSelected)
                              .contains(form.id),
                          imageUrl: form.image1,
                          title: form.name,
                          subtitle: form.description,
                          entries: [
                            '🥗 Entrée : ${form.entrance}',
                            '🍗 Plat : ${form.dishe}',
                            '🍨 Dessert : ${form.dessert}',
                            '🥤 Boisson : ${form.drink}',
                          ],
                          price: '${form.price}€',
                          onPressed: () {
                            final currentForms =
                                ref
                                    .read(
                                      reservationRestaurantProvider.notifier,
                                    )
                                    .state
                                    .selectedForms;

                            // Create a *modifiable copy*
                            final formList = List<FormModel>.from(currentForms);

                            final formsId = ref.read(formsIdSelected.notifier);

                            // Create a modifiable copy of the selected IDs too
                            final currentIds = List<int>.from(
                              ref.read(formsIdSelected),
                            );

                            if (currentIds.contains(form.id)) {
                              // remove Id
                              currentIds.remove(form.id);
                              formList.removeWhere((f) => f.id == form.id);
                            } else {
                              // add Id
                              currentIds.add(form.id);
                              formList.add(form);
                            }

                            // update the state
                            formsId.state = currentIds;

                            ref
                                .read(reservationRestaurantProvider.notifier)
                                .update(
                                  (state) =>
                                      state.copyWith(selectedForms: formList),
                                );

                            setState(() {});
                          },
                        ),
                      )
                      .toList(),
            ),
          ),
          ButtonLunch(
            onPressed: () {
              if (ref.read(formsIdSelected).isNotEmpty) {
                ref.read(restoTypeState.notifier).state =
                    RestoProvidersType.reserve;
                context.pop();
              }
            },
            price: '',
            bigTitle: 'Bon appétit !',
            subtitle: 'Laissez-vous tenter',
          ),
        ],
      ),
    );
  }
}

class FormuleCard extends StatefulWidget {
  final bool isSelected;
  final String imageUrl;
  final String title;
  final String subtitle;
  final List<String> entries;
  final String price;
  final VoidCallback onPressed;

  const FormuleCard({
    super.key,
    required this.isSelected,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.entries,
    required this.price,
    required this.onPressed,
  });

  @override
  State<FormuleCard> createState() => _FormuleCardState();
}

class _FormuleCardState extends State<FormuleCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: Image.network(
                  widget.imageUrl,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              // title row
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Icon(
                      widget.isSelected
                          ? Icons.radio_button_checked
                          : Icons.radio_button_unchecked,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
              // subtitle
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Text(
                  widget.subtitle,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ),
              // entries
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      widget.entries
                          .map(
                            (e) => Text(
                              e,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          )
                          .toList(),
                ),
              ),
              // price row
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 4, 12, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.price,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),

              // bottom button
            ],
          ),
        ),
      ),
    );
  }
}
