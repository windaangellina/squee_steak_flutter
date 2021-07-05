import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/ui/display/mobile/favorite_screen_mobile.dart';
import 'package:squee_steak_flutter/ui/main_screen.dart';

class FavoriteScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Favorite Menu'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MainScreen();
            }));
          },
        ),
      ),
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

class FavoriteMenuWeb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}