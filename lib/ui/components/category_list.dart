import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/category.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class ItemCategory extends StatelessWidget{
  final Category category;
  final int categoryItemCount;
  ItemCategory({required this.category, required this.categoryItemCount});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double widthItem = 0;
    if(size.width <= 360){
      widthItem = size.width * 0.45;
    }
    else if(size.width > 360 && size.width <= 600){
      widthItem = size.width * 0.35;
    }
    else if(size.width > 600 && size.width <= 1200){
      widthItem = size.width * 0.2;
    }
    else{
      widthItem = size.width * 0.1;
    }

    return Container(
      width: widthItem,
      height: size.height * 0.15,
      padding: EdgeInsets.all(6.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: category.backgroundColor == null ? colorRedDesert : category.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            category.name,
            textAlign: TextAlign.center,
            style: textCategoryItem,
          ),
          Image.asset(
            category.urlPhoto,
            fit: BoxFit.cover,
            height: size.height * 0.08,
          ),
          Text(
            '$categoryItemCount items',
            textAlign: TextAlign.center,
            style: textCategoryItemCount,
          ),
        ],
      ),
    );
  }

}