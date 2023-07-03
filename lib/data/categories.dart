import 'package:bubolechka2/data/cards.dart';

import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
  ["1", "Schlange", "змия", "snake"],
  ["2", "Tiger", "тигър", "tiger"],
  ["3", "Elefant", "слон", "elephant"],
  ["4", "Schildkröte", "костенурка", "turtle"],
  ["5", "Delfin", "делфин", "dolphin"],
  ["6", "Krabbe", "рак", "crab"],
  ["7", "Seepferdchen", "морско конче", "seahorse"],
  ["8", "Clownfisch", "риба Клоун", "Clown fish"],
  ["9", "Adler", "орел", "eagle"],
  ["10", "Eule", "бухал", "owl"],
  ["11", "Schmetterling", "пеперуда", "butterfly"],
  ["12", "Libelle", "водно конче", "dragonfly"],
  ["13", "Newt", "тритон", "newt"],
  ["14", "Salamander", "саламандър", "salamander"],
  ["15", "Eidechse", "гущер", "lizard"],
  ["16", "Chamäleon", "хамелеон", "chameleon"],
  ["17", "Frosch", "жабa", "frog"]
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2]
      },
      cards
          .where(
            (card) => card.categoryId == int.parse(categoryLabels[0]),
          )
          .toList());
}).toList();
