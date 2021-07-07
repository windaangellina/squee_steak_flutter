import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/ui/components/custom_appbar.dart';
import 'package:squee_steak_flutter/ui/components/menu_grid.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class FavoriteMenuWeb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scrollbar(
      isAlwaysShown: false,
      child: Container(
        child: Column(
            children : [
              CustomAppBarWeb(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MenuGrid(
                      listMenu: getFavoriteMenus(),
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