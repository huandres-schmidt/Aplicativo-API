import 'package:projeto_api/core/resources/base_model.dart';

class Category extends BaseModel{
  int? id;
  String? name;
  String? image;
  String? creationAt;
  String? updatedAt;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });

  Category.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    image = json['image'];
    creationAt = json['creationAt'];
    updatedAt = json['updatedAt'];
  }

  @override
  String toString() {
    return "id: $id | name: $name | image: $image | creationAt: $creationAt | updatedAt: $updatedAt";
  }

  @override
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['creationAt'] = creationAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}