import 'package:flutter/material.dart';

class Favourite extends ChangeNotifier {
  List<String> fav_words = [];
  List<String> get words => fav_words;

  void favourite(String word) {
    final isExist = fav_words.contains(word);
    if (isExist) {
      fav_words.remove(word);
    } else {
      fav_words.add(word);
    }
    notifyListeners();
  }

  void clear_all() {
    fav_words = [];
    notifyListeners();
  }

  bool isExist(String word) {
    final isExist = fav_words.contains(word);
    return isExist;
  }
}
