import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntListNotifier extends StateNotifier<List<int>> {
  IntListNotifier() : super([]) {
    _loadIntList();
  }

  Future<void> _loadIntList() async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('intList');
    if (jsonString != null) {
      state = List<int>.from(jsonDecode(jsonString));
    }
  }

  Future<void> addNumber(int number) async {
    state = [...state, number]; // Updating state with new number
    await _saveIntList();
  }

  Future<void> removeNumber(int number) async {
    state = state.where((item) => item != number).toList();
    await _saveIntList();
  }

  Future<void> _saveIntList() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('intList', jsonEncode(state));
  }
}

// Create a Riverpod provider
final intListProvider = StateNotifierProvider<IntListNotifier, List<int>>(
  (ref) => IntListNotifier(),
);
