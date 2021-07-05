import 'package:flutter/material.dart';
import 'package:squee_steak_flutter/util/constants.dart';

class AppBanner extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}