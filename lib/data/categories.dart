import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
  ["1", "Obst", "змия", "snake", "ES"],
  ["2", "Farben", "тигър", "tiger"],
  ["3", "Moebel", "слон", "elephant"],
  ["4", "Sachen", "костенурка", "turtle"],
  ["5", "Spielzeug", "делфин", "dolphin"],
  ["6", "Tiere", "рак", "crab"],
  ["7", "Wilde Tiere", "морско конче", "seahorse"],
  ["8", "Zahlen", "риба Клоун", "Clown fish"],
  ["9", "Wetter", "орел", "eagle"],
  ["10", "Zu Hause", "бухал", "owl"],
  ["11", "Natur", "пеперуда", "butterfly"],
  ["12", "Im Meer", "водно конче", "dragonfly"],
  ["13", "Am Strand", "тритон", "newt"],
  ["14", "Sport", "саламандър", "salamander"],
  ["15", "Stadt", "гущер", "lizard"],
  ["16", "Berufe", "хамелеон", "chameleon"],
  ["17", "Fahrzeuge", "жаба", "frog"]
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
      });
}).toList();
