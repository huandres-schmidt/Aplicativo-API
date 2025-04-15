import '../../core/resources/base_model.dart';
import 'category.dart';

class Produto extends BaseModel{
  int? id;
  String? title;
  int? price;
  String? description;
  List<String?>? images;
  String? creationAt;
  String? updatedAt;
  Category? category;

  Produto({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.creationAt,
    required this.updatedAt,
    required this.category,
  });

  Produto.fromJson(Map<String,dynamic> json){
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    images = json['images'].cast<String>();

    creationAt = json['creationAt'];
    updatedAt = json['updatedAt'];
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
  }

  @override
  String toString() {
    return "id: $id | title: $title | price: $price | description: $description | images: $images | creationAt: $creationAt | updatedAt: $updatedAt | category $category\n";
  }

  @override
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic> {};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['description'] = description;
    data['images'] = images;
    data['creationAt'] = creationAt;
    data['updateAt'] = updatedAt;
    if (category != null) {
      data['category'] = category!.toMap();
    }
    return data;
  }
}