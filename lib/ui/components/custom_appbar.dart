import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/util/constants.dart';
import '../favorite_screen.dart';
import '../main_screen.dart';

class CustomAppBarWeb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppBar(
        elevation: 0,
        backgroundColor: colorYellow,
        centerTitle: true,
        titleSpacing: 0.0,
        leading: Container(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MainScreen();
                }));
              },
              child: Text('Home'),
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FavoriteScreen();
                }));
              },
              child: Text('Favorite'),
            ),
          ],
        )
    );
  }
}

class CustomAppBarMobileFavoriteScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

}