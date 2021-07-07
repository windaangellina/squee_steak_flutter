import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/category.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class ItemCategoryMobile extends StatelessWidget{
  final Category category;
  final int categoryItemCount;
  ItemCategoryMobile({required this.category, required this.categoryItemCount});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      height: size.height * 0.15,
      padding: EdgeInsets.all(6.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: colorRedDesert,
          borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
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