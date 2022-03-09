import '/data/models/base_model.dart';
import '/data/models/category_model.dart';

class ArticleModel extends BaseModel {
  final String title;
  final String content;
  final String imageUrl;
  final CategoryModel category;
  ArticleModel({
    required dynamic id,
    required this.category,
    required this.title,
    required this.content,
    required this.imageUrl,
  }) : super(id);
}
