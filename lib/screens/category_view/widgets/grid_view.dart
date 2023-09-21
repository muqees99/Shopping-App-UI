import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_project/data_base/categories.dart';
import 'package:ui_project/constants/imagesPath.dart';
import 'package:ui_project/screens/category_view/category_view.dart';
import 'package:ui_project/screens/product_view/product_view.dart';

import '../../../constants/colors.dart';

class CategoriesGridView extends StatefulWidget {
  const CategoriesGridView({
    super.key,
  });

  @override
  State<CategoriesGridView> createState() => _CategoriesGridViewState();
}

class _CategoriesGridViewState extends State<CategoriesGridView> {
  @override
  void initState() {
    print(CategoryForView.categoryList);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: CategoryForView.categoryList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 2,
        crossAxisSpacing: 0,
        childAspectRatio: 0.75,
        crossAxisCount: 2,
      ),
      itemBuilder: ((context, index) {
        return Hero(
          tag: 'Category$index',
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductView(
                    categoryName: CategoryForView.categoryList[index]['Name']);
              }));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: TextColors.textColor1,
                border: Border.all(width: 1, color: TextColors.textColor2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(
                  //   Icons.image,
                  //   size: 120,
                  //   color: UpdatedColors.black,
                  // ),
                  Container(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                          CategoryForView.categoryList[index]['Image']),
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                    color: TextColors.textColor2,
                  ),
                  Text(
                    CategoryForView.categoryList[index]['Name'],
                    style: TextStyle(
                        fontSize: 20,
                        color: UpdatedColors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    CategoryForView.categoryList[index]['Tagline'],
                    style: TextStyle(
                        fontSize: 16,
                        color: UpdatedColors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
