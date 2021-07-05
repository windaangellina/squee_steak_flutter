import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/menu.dart';
import 'package:squee_steak_flutter/ui/display/mobile/detail_screen_mobile.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class DetailScreen extends StatefulWidget{
  final Menu menu;
  DetailScreen({required this.menu});

  @override
  _StateDetailScreen createState() => _StateDetailScreen(menu: menu);
}

Icon getIcon(isLiked){
  var icon = isLiked? Icons.favorite_rounded : Icons.favorite_border_rounded;
  return Icon(
    icon, color: Colors.white,
  );
}

String getLabelFavorite(isLiked){
  return isLiked? 'Unfavoured' : 'Favorite';
}

class _StateDetailScreen extends State<DetailScreen>{
  final Menu menu;
  _StateDetailScreen({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            if(constraints.maxWidth <= 600){
              return DetailMenuMobile(menu: menu);
            }
            else{
              return DetailMenuWeb(menu: menu);
            }
          }
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
                menu.isLiked = !menu.isLiked;
            });
          },
          label: Text(
            getLabelFavorite(menu.isLiked),
            style: TextStyle(color: Colors.white),
          ),
          icon: getIcon(menu.isLiked),
          backgroundColor: menu.isLiked ? colorPink : colorGrey,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class DetailMenuWeb extends StatelessWidget{
  final Menu menu;
  DetailMenuWeb({required this.menu});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}