import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Reco_data.dart';

class RecoBloc with ChangeNotifier {
  late TabController tabController;
  List<RecoTabCategory> tabs = [];
  List<RecoItem> items = [];
  List<RecoItem> filteredItems = [];
  RecoCategory? selectedCategory;

  void init(TickerProvider ticker) {
    tabController = TabController(length: recoCategories.length, vsync: ticker);
    for (int i = 0; i < recoCategories.length; i++) {
      final category = recoCategories[i];
      tabs.add(RecoTabCategory(category: category, selected: (i == 0)));

      items.add(RecoItem(category: category));

      for (int j = 0; j < category.products.length; j++) {
        final product = category.products[j];
        items.add(RecoItem(product: product));
      }
    }
  }

  void onCategorySelected(int index) {
    final selected = tabs[index];
    selectedCategory = selected.category;

    for (int i = 0; i < tabs.length; i++) {
      final condition = selected.category.name == tabs[i].category.name;
      tabs[i] = tabs[i].copyWith(condition);


    }



    notifyListeners();
  }
}

class RecoTabCategory {
  const RecoTabCategory({
    required this.category,
    required this.selected,
  });

  RecoTabCategory copyWith(bool selected) =>
      RecoTabCategory(category: this.category, selected: selected);

  final RecoCategory category;
  final bool selected;
}

class RecoItem {
  const RecoItem({
     this.category,
     this.product,
  });
  final RecoCategory? category;
  final RecoProduct? product;

  bool get isCategory => category != null;
}
