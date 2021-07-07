import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/menu.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class DetailMenuMobile extends StatelessWidget{
  final Menu menu;
  DetailMenuMobile({required this.menu});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: [
                    Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset(
                              menu.urlPhoto,
                              fit: BoxFit.cover,
                              height: 400,
                            )
                          ],
                        ),
                        SafeArea(
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0,
                                    top: 24.0
                                ),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.black54.withOpacity(0.5),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.close_outlined,
                                            color: Colors.white,
                                            size: appIconSize + 4.0,
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
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
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(16.0),
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
                              style: textDetailInfoBold,
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
                                      children: starsForRatings(
                                          rating: menu.rating,
                                          isDetail: true
                                      )
                                  )
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  menu.getPriceFormat(),
                                  textAlign: TextAlign.end,
                                  style: textDetailInfoBold,
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
                              style: textDetailInfo,
                            ),
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}