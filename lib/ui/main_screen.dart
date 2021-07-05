import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/ui/display/mobile/main_screen_mobile.dart';
import 'package:squee_steak_flutter/ui/favorite_screen.dart';
import 'package:squee_steak_flutter/ui/profile_screen.dart';
import 'package:squee_steak_flutter/util/data_dummy.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.person, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ProfileScreen();
            }));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_rounded, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FavoriteScreen();
              }));
            },
          ),
        ],
      ),
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