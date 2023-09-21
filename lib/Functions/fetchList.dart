import 'package:ui_project/data_base/products.dart';

// class FetchList {
//   static List getTagList(String tag) {
//     List list = [];

//     for (int i = 0; i > Products.items.length; i++) {
//       for (int j = 0; Products.items[i]['Tags'].length; j++) {
//         if (Products.items[i]['Tags'][j] == tag) {
//           list.add(Products.items[i]);
//           print(Products.items[i]);
//         }
//       }
//     }
//     return list;
//   }
// }

class FetchList {
  static List getList(String tag) {
    List list = [];
    for (int i = 0; i < Products.items.length; i++) {
      for (int j = 0; j < Products.items[i]['Tags'].length; j++) {
        if (Products.items[i]['Tags'][j] == tag) {
          list.add(Products.items[i]);
        }
      }
    }
    return list;
  }
}


// class itemDetail {
//   static List getItemDetails(String itemName) {
//     List itemList = [];
//     for (int i = 0; i < Products.items.length; i++) {
//       if (Products.items[i]['itemName'] == itemName) {
//         itemList.add(Products.items[i]);
//       }
//     }
//     return itemList;
//   }
// }
