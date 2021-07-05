import 'package:flutter/cupertino.dart';
import 'package:squee_steak_flutter/ui/components/menu_list.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class FavoriteMenuMobile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Column(
              children: <Widget>[
                MenuList(listMenu: getFavoriteMenus())
              ],
            ),
          )
      ),
    );
  }

}