import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/category.dart';
import 'package:squee_steak_flutter/model/menu.dart';
import 'package:squee_steak_flutter/ui/components/app_banner.dart';
import 'package:squee_steak_flutter/ui/components/category_list.dart';
import 'package:squee_steak_flutter/ui/components/custom_appbar.dart';
import 'package:squee_steak_flutter/ui/components/menu_grid.dart';
import 'package:squee_steak_flutter/ui/display/web/favorite_screen_web.dart';
import 'package:squee_steak_flutter/ui/favorite_screen.dart';
import 'package:squee_steak_flutter/ui/main_screen.dart';
import 'package:squee_steak_flutter/util/constants.dart';
import 'package:squee_steak_flutter/util/data_dummy.dart';

class WebDisplay extends StatefulWidget{
  @override
  _StateWebDisplay createState() => _StateWebDisplay();
}

class _StateWebDisplay extends State<WebDisplay>{
  String? chosenCategory;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scrollbar(
      isAlwaysShown: false,
      child: Container(
        child: Column(
          children : [
            CustomAppBarWeb(),
            AppBanner(),
            Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                height: size.height * 0.2,
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
                          child: ItemCategory(
                              category: category,
                              categoryItemCount: getListCategoryItemCount(category: category.name)
                          ),
                        )
                    );
                  },
                )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: MenuGrid(
                    listMenu: getAllMenu(category: chosenCategory),
                    gridCount: 4
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}