import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// sebelum bisa import harus add dependencies di pubspec.yaml : intl: "^0.17.0"
// dibutuhkan untuk NumberFormat
import 'package:intl/intl.dart';
import 'package:squee_steak_flutter/model/menu.dart';
import 'package:squee_steak_flutter/util/data_dummy.dart';

// var
const appTitle = 'Squee Steak';
const appTextFontSize = 14.0;
const appInfoTitleTextFontSize = 16.0;
const appSectionTitleTextFontSize = 17.0;
const appIconSize = 16.0;
const appLogoPath = "assets/logo/app_logo.png";
const appLogoWithSincePath = "assets/logo/app_logo_since.png";
const appLogoCroppedPath = "assets/logo/app_logo_cropped.png";


// misc
// colors
// 0xff -> extra so the color works
const colorYellow = Color(0xffFFE600);
const colorPink = Color(0xffff7f92);
const colorGrey = Color(0xff524d4e);
const colorRedDesert = Color(0xffB74521);
const colorWhiteCararra = Color(0xffEEEDE9);

String getThousandSeparatorFormat(numValue){
  var numFormat = NumberFormat("#,##0.00", "en_US");
  numFormat.minimumFractionDigits = 0;
  numFormat.maximumFractionDigits = 2;
  return numFormat.format(numValue);
}

// style
const textInfo = TextStyle(
  fontSize: appTextFontSize,
);
const textInfoBold = TextStyle(
  fontSize: appTextFontSize,
  fontWeight: FontWeight.bold
);
const textInfoTitle = TextStyle(
  fontSize: appInfoTitleTextFontSize,
  fontWeight: FontWeight.bold
);
const textSectionTitle = TextStyle(
  fontSize: appSectionTitleTextFontSize,
  fontWeight: FontWeight.bold
);
const textDetailInfo = TextStyle(
  fontSize: appTextFontSize + 4.0,
);
const textDetailInfoBold = TextStyle(
    fontSize: appTextFontSize + 4.0,
    fontWeight: FontWeight.bold
);
const textDetailInfoTitle = TextStyle(
    fontSize: appInfoTitleTextFontSize + 4.0,
    fontWeight: FontWeight.bold
);
const textCategoryItem = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.bold,
  color: colorWhiteCararra
);

// others
List<Icon> starsForRatings({var rating, bool isDetail = false}) {
  List<Icon> stars = [];
  double iconSize = appIconSize;
  if(isDetail){
    iconSize += 4.0;
  }
  for(int i = 1; i <= 5; i++){
    if(i <= rating){
      stars.add(Icon(
        Icons.star,
        color: Colors.yellow,
        size: iconSize,
      ));
    }
    else{
      stars.add(Icon(
        Icons.star_border,
        color: Colors.yellow,
        size: iconSize,
      ));
    }
  }
  return stars;
}

List<Menu> getFavoriteMenus(){
  return listMenuDummy.where((menu) => menu.isLiked).toList();
}

List<Menu> getAllMenu({String? category}){
  if(category == null){
    return listMenuDummy;
  }
  else{
    return listMenuDummy.where((menu) =>
      menu.category.name.toLowerCase() == category.toLowerCase()
    ).toList();
  }
}