import 'package:squee_steak_flutter/model/category.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class Menu{
  int id;
  Category category;
  String name;
  num price;
  num rating;
  String urlPhoto;
  String description;
  bool isLiked;

  Menu({
    required this.id,
    required this.category,
    required this.name,
    required this.rating,
    required this.price,
    required this.urlPhoto,
    required this.description,
    this.isLiked = false
  });

  String getPriceFormat(){
    return "Rp. ${getThousandSeparatorFormat(this.price)}";
  }

  String getRatingFormat(){
    return "${this.rating}/5";
  }
}