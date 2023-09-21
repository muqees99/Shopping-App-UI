import 'package:flutter/material.dart';
import 'package:ui_project/screens/category_view/widgets/first_container.dart';
import 'package:ui_project/screens/category_view/widgets/grid_view.dart';

import '../../constants/colors.dart';
import '../../constants/imagesPath.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstContainerCategory(),
          Expanded(child: CategoriesGridView())
        ],
      ),
    );
  }
}
