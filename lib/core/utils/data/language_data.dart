import 'package:spots_xplorer_app/core/models/categories_model.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';

const Map<String, String> languagePrefixMap = {
  'en': 'English',
  'es': 'Spanish',
  'fr': 'French',
};

List<CategoriesModel> menuListItem = [
  const CategoriesModel(
    id: 1,
    title: 'Nautiques',
    image: 'assets/imgs/SPORTNAUTIQUE.png',
  ),
  const CategoriesModel(
    id: 2,
    title: 'Collectifs',
    image: 'assets/imgs/SPORTSCOLLETIFS.png',
  ),
  const CategoriesModel(
    id: 3,
    title: 'Nature',
    image: 'assets/imgs/SPORTNATURE.png',
  ),
  const CategoriesModel(
    id: 4,
    title: 'De Plage',
    image: 'assets/imgs/SPORTDEPLAGE.png',
  ),
  const CategoriesModel(
    id: 5,
    title: 'Bien-Être',
    image: 'assets/imgs/SPORTSBIENETRE.png',
  ),
  const CategoriesModel(
    id: 6,
    title: 'Mécaniques',
    image: 'assets/imgs/SPORTSMECA.png',
  ),
  const CategoriesModel(
    id: 7,
    title: 'Combats',
    image: 'assets/imgs/SPORTSCOMBAT.png',
  ),
];

EventModel emptyEvent = const EventModel(
  id: 0,
  title: 'Cyclosportive La  - Ste-Luce',
  images: [],
  eventType: '',
);



// map to French short names
final dayMap = {
  "Monday": "Lun.",
  "Tuesday": "Mar.",
  "Wednesday": "Mer.",
  "Thursday": "Jeu.",
  "Friday": "Ven.",
  "Saturday": "Sam.",
  "Sunday": "Dim."
};