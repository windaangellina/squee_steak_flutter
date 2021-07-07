import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/util/constants.dart';

import '../favorite_screen.dart';

class AppBanner extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              color: colorYellow,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    appLogoPath,
                    fit: BoxFit.scaleDown,
                    height: 200,
                  )
                ],
              )
            ),
            SafeArea(
                child: Padding(
                    padding: const EdgeInsets.only(
                        right: 16.0,
                        top: 16.0
                    ),
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: colorPink.withOpacity(0.5),
                            child: IconButton(
                              icon: Icon(Icons.favorite_rounded, color: Colors.white),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return FavoriteScreen();
                                }));
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                )
            )
          ],
        )
    );
  }
}