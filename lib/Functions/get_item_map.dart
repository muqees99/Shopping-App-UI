import 'package:ui_project/data_base/products.dart';

class ItemDetails {
  static List getItemDetails(String itemName) {
    List itemList = [];
    for (var i = 0; i < Products.items.length; i++) {
      if (Products.items[i]['itemName'] == itemName) {
        itemList.add(Products.items[i]);
      }
    }

    return itemList;
  }
}
