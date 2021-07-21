import 'package:flutter/material.dart';
import 'package:meal_app/category_item.dart';
import 'dummy.dart';
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        children: DUMMY_CATEGORIES.map((categoryData) => CategoryItem(categoryData.title,categoryData.color)).toList(),
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,childAspectRatio: 3/2, mainAxisSpacing: 12,crossAxisSpacing: 12),
      ),
    );
  }
}
