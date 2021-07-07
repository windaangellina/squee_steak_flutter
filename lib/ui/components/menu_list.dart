import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/menu.dart';
import 'package:squee_steak_flutter/ui/detail_screen.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class MenuList extends StatelessWidget{
  final List<Menu> listMenu;
  MenuList({required this.listMenu});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: listMenu.length,
        padding: EdgeInsets.only(bottom: 64.0),
        itemBuilder: (context, index){
          final Menu menu = listMenu[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(menu: menu);
              }));
            },
            child: ItemMenuMobile(menu: menu,),
          );
        },
      )
    );
  }
}

class ItemMenuMobile extends StatelessWidget{
  final Menu menu;
  ItemMenuMobile({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(10.0),
      decoration:
        BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                offset: Offset(0,0),
                blurRadius: 5
            )
          ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                    menu.urlPhoto,
                    height: 150,
                    fit: BoxFit.cover,
                ),
              )
          ),
          Expanded(
            flex: 2,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6.0),
                      alignment: Alignment.topLeft,
                      child: Expanded(
                        flex: 1,
                        child: Text(
                          menu.name,
                          textAlign: TextAlign.start,
                          style: textInfoTitle,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: starsForRatings(rating: menu.rating)
                              )
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              menu.getPriceFormat(),
                              textAlign: TextAlign.end,
                              style: textInfoBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: Expanded(
                        flex: 1,
                        child: Text(
                          menu.description,
                          textAlign: TextAlign.start,
                          style: textInfo,
                        ),
                      ),
                    )
                  ],
                )
            ),
          )
        ],
      ),
    );
  }}