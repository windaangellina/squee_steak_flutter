import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/ui/components/section_title.dart';
import 'package:squee_steak_flutter/ui/components/app_banner.dart';
import 'package:squee_steak_flutter/ui/components/menu_list.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class MobileDisplay extends StatelessWidget{
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
                SectionTitle(title: 'Yummy foods at your fingertips!'),
                MenuList(listMenu: getAllMenu())
              ],
            ),
          )
      ),
    );
  }
}