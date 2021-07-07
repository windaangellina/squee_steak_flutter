import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/ui/display/mobile/favorite_screen_mobile.dart';
import 'package:squee_steak_flutter/ui/main_screen.dart';

import 'display/web/favorite_screen_web.dart';

class FavoriteScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            if(constraints.maxWidth <= 600){
              return FavoriteMenuMobile();
            }
            else{
              return FavoriteMenuWeb();
            }
          }
      ),
    );
  }
}