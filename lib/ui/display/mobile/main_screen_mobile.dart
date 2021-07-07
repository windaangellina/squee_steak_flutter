import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/category.dart';
import 'package:squee_steak_flutter/ui/components/app_banner.dart';
import 'package:squee_steak_flutter/ui/components/category_list.dart';
import 'package:squee_steak_flutter/ui/components/menu_list.dart';
import 'package:squee_steak_flutter/util/constants.dart';
import 'package:squee_steak_flutter/util/data_dummy.dart';

class MobileDisplay extends StatefulWidget{
  @override
  _StateMobileDisplay createState() => _StateMobileDisplay();
}

class _StateMobileDisplay extends State<MobileDisplay>{
  String? chosenCategory;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
          child: Container(
            height: size.height,
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                AppBanner(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  height: size.height * 0.15,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: listCategory.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      final Category category = listCategory[index];
                      return Padding(
                          padding: EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                chosenCategory = category.name;
                              });
                            },
                            child: ItemCategoryMobile(
                              category: category,
                              categoryItemCount: getListCategoryItemCount(category: category.name)
                            ),
                          )
                      );
                    },
                  )
                ),
                SizedBox(
                  height: 12.0,
                ),
                // SectionTitle(title: 'Yummy foods at your fingertips!'),
                MenuList(listMenu: getAllMenu(category: chosenCategory)),
              ],
            ),
          )
      ),
    );
  }
}