import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/ui/display/mobile/main_screen_mobile.dart';
import 'package:squee_steak_flutter/ui/display/web/main_screen_web.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            if(size.width <= 600){
              return MobileDisplay();
            }
            else if(size.width > 600 && size.width <= 900){
              return WebDisplay(gridCount: 2);
            }
            else if(size.width > 900 && size.width <= 1200){
              return WebDisplay(gridCount: 3);
            }
            else{
              return WebDisplay(gridCount: 4);
            }
          }
      ),
    );
  }
}