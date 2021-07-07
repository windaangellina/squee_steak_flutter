import 'dart:ui';

class Category{
  int id;
  String name;
  String urlPhoto;
  Color? backgroundColor;

  Category({
    required this.id,
    required this.name,
    required this.urlPhoto,
    this.backgroundColor
  });
}