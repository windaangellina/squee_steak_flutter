import 'package:flutter/material.dart';
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
            child: Column(
              children: <Widget>[
                AppBanner(),
                Container(
                  height: 125,
                  child: ListView(
                    // by default arah scrollnya vertical
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: listCategory.map((category) {
                        return Padding(
                            padding: EdgeInsets.all(4.0),
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  chosenCategory = category.name;
                                });
                              },
                              child: ItemCategoryMobile(category: category),
                            )
                        );
                      }).toList()
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                // SectionTitle(title: 'Yummy foods at your fingertips!'),
                MenuList(listMenu: getAllMenu(category: chosenCategory))
              ],
            ),
          )
      ),
    );
  }
}