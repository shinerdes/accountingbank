import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteListNotifier extends StateNotifier<List<Map<int, String>>> {
  FavoriteListNotifier() : super([]) {
    _loadFromPrefs(); // Load data when initialized
  }

  // 📌 Load data from SharedPreferences
  Future<void> _loadFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('favoriteListKey');

    if (jsonString != null) {
      List decodedList = jsonDecode(jsonString);

      state = decodedList.map((e) {
        final map = e as Map<String, dynamic>;
        return map
            .map((key, value) => MapEntry(int.parse(key), value as String));
      }).toList();
    }
  }

  // 📌 Save data to SharedPreferences
  Future<void> _saveToPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    List<Map<String, String>> jsonCompatibleList = state.map((map) {
      return map.map((key, value) => MapEntry(key.toString(), value));
    }).toList();

    String jsonString = jsonEncode(jsonCompatibleList);
    await prefs.setString('favoriteListKey', jsonString);
  }

  void addItem(int key, String value) {
    state = [
      ...state,
      {key: value}
    ];
    _saveToPrefs();
  }

  void removeItem(int key) {
    state = state.where((map) => !map.containsKey(key)).toList();
    _saveToPrefs();
  }
}

// 📌 Define the Riverpod Provider
final favoriteListProvider =
    StateNotifierProvider<FavoriteListNotifier, List<Map<int, String>>>(
  (ref) => FavoriteListNotifier(),
);
