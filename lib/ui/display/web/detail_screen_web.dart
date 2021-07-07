import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/model/menu.dart';
import 'package:squee_steak_flutter/ui/components/custom_appbar.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class DetailMenuWeb extends StatefulWidget{
  final Menu menu;
  DetailMenuWeb({required this.menu});

  @override
  _StateDetailMenuWeb createState() => _StateDetailMenuWeb(menu: menu);
}


class _StateDetailMenuWeb extends State<DetailMenuWeb>{
  final Menu menu;
  _StateDetailMenuWeb({required this.menu});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scrollbar(
          isAlwaysShown: true,
          child: Column(
            children: [
              CustomAppBarWeb(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: size.width <= 1200 ? 800 : 1200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 64.0
                        ),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  menu.urlPhoto,
                                  height: size.height * 0.5,
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
                              Text(
                                menu.description,
                                textAlign: TextAlign.justify,
                                style: textInfoTitle,
                              ),
                            ],
                          ),
                        ),
                      )
                  )
                ],
              )
            ],
          )
      ),
    );
  }}