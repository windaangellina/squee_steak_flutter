import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class SectionTitle extends StatelessWidget{
  final String title;
  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 24.0, left: 12.0, bottom: 12.0),
      child: Text(
        title,
        style: textSectionTitle,
      ),
    );
  }

}