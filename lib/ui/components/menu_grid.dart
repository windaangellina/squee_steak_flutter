import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/menu.dart';
import 'package:squee_steak_flutter/ui/detail_screen.dart';
import 'package:squee_steak_flutter/ui/display/web/detail_screen_web.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class MenuGrid extends StatelessWidget{
  final List<Menu> listMenu;
  final int gridCount;
  MenuGrid({required this.listMenu, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        isAlwaysShown: true,
        child:Padding(
          padding: const EdgeInsets.all(24.0),
          child: GridView.count(
              crossAxisCount: gridCount,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              children: listMenu.map((menu) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailScreen(menu: menu);
                    }));
                  },
                  child: ItemMenuGrid(menu: menu)
                );
              }).toList()
          ),
        )
    );
  }
}

class ItemMenuGrid extends StatelessWidget{
  final Menu menu;
  ItemMenuGrid({required this.menu});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      height: size.height * 0.5,
      decoration:
      BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: Offset(0,0),
                blurRadius: 5
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              menu.urlPhoto,
              height: size.height * 0.325,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            menu.name,
            textAlign: TextAlign.start,
            style: textInfoTitle,
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
        ],
      ),
    );
  }

}