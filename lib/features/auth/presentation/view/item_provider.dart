import 'dart:html';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final addedItemsProvider =
    StateNotifierProvider<AddedItemsNotifier, List<Item>>(
  (ref) => AddedItemsNotifier(),
);

class AddedItemsNotifier extends StateNotifier<List<Item>> {
  AddedItemsNotifier() : super([]);

  void addItem(Item item) {
    state = [...state, item];
  }
}

class Item {
  final String itemName;
  final String phoneNumber;
  final String location;
  final File? image;

  Item({
    required this.itemName,
    required this.phoneNumber,
    required this.location,
    this.image,
  });
}
