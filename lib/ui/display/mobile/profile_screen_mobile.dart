import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreenMobile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CircleAvatar(
                      minRadius: 30,
                      maxRadius: 50,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/56826855?s=400&u=e820299e6b2e0954038e144c5d9460e9cd95b8c9&v=4',
                      ),
                    )
                  ],
                ),
                Text('Winda Angelina Utama')
              ],
            ),
          )
      ),
    );
  }
}