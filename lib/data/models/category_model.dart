import '/data/models/base_model.dart';

class CategoryModel extends BaseModel {
  final String title;
  final String imageUrl;

  CategoryModel({
    required dynamic id,
    required this.title,
    required this.imageUrl,
  }) : super(id);
}
