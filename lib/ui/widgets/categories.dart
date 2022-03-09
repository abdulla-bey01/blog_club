import '/ui/view-models/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'category_item.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sizes = MediaQuery.of(context).size;
    final _width = _sizes.width;

    final HomeScreenViewModel _homePageViewModel = Get.find();
    return SizedBox(
      height: 273.0,
      width: _width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _homePageViewModel.categories.length,
        itemBuilder: (ctx, index) {
          final _category = _homePageViewModel.categories[index];
          return Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: CategoryItem(category: _category),
          );
        },
      ),
    );
  }
}
