import '/data/models/category_model.dart';
import '/ui/theming/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required CategoryModel category,
  })  : _category = category,
        super(key: key);

  final CategoryModel _category;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    final _theme = _themeController.theme;
    return Stack(
      children: [
        Container(
          height: 273.0,
          width: 236.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            image: DecorationImage(
              image: NetworkImage(_category.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 24,
          bottom: 30,
          child: Text(
            _category.title,
            style: _theme.px24w800_255,
          ),
        ),
      ],
    );
  }
}
