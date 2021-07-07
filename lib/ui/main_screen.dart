import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/ui/display/mobile/main_screen_mobile.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            if(constraints.maxWidth <= 600){
              return MobileDisplay();
            }
            else{
              return MenuGrid(gridCount: 4);
            }
          }
      ),
    );
  }
}

class MenuGrid extends StatelessWidget{
  final int gridCount;
  MenuGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}