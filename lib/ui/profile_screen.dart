import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/ui/display/mobile/profile_screen_mobile.dart';
import 'main_screen.dart';

class ProfileScreen extends StatelessWidget{
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
              return ProfileScreenMobile();
            }
            else{
              throw UnimplementedError();
            }
          }
      ),
    );
  }

}