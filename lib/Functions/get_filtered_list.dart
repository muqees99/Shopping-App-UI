import 'package:ui_project/data_base/products.dart';

class FilteredList {
  static List getfilteredList(String categoryName, String tag) {
    List filteredList = [];
    for (var i = 0; i < Products.items.length; i++) {
      if (Products.items[i]['Category'] == categoryName) {
        for (var j = 0; j < Products.items[i]['Tags'].length; j++) {
          if (Products.items[i]['Tags'][j] == tag) {
            filteredList.add(Products.items[i]);
          }
        }
      }
    }
    return filteredList;
  }
}
