import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/category.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class ItemCategoryMobile extends StatelessWidget{
  final Category category;
  ItemCategoryMobile({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(12.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: colorRedDesert,
          borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            category.urlPhoto,
            fit: BoxFit.cover,
            height: 75,
          ),
          Text(
            category.name,
            textAlign: TextAlign.center,
            style: textCategoryItem,
          )
        ],
      ),
    );
  }

}