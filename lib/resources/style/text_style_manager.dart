import 'package:flutter/cupertino.dart';
import '../constant/font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  Color color,
  FontWeight fontWeight,
  String fontFamily,
) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
  );
}

//Segoe Reguler Style
TextStyle getRegulerSegoeStyle(
    {double fSize = FontSize.size12,
    required Color color,
    String fontFamily = ConstFont.segoeUi}) {
  return _getTextStyle(
    fSize,
    color,
    CustomeFontWeight.reguler,
    fontFamily,
  );
}

//Segoe SimeBold Style
TextStyle getSimeBoldSegoeStyle(
    {double fSize = FontSize.size14,
    required Color color,
    String fontFamily = ConstFont.segoeUi}) {
  return _getTextStyle(
    fSize,
    color,
    CustomeFontWeight.simeBold,
    fontFamily,
  );
}

// Segoe Bold Style
TextStyle getBoldSegoeStyle(
    {double fSize = FontSize.size22,
    required Color color,
    String fontFamily = ConstFont.segoeUi}) {
  return _getTextStyle(
    fSize,
    color,
    CustomeFontWeight.bold,
    fontFamily,
  );
}

// SF Pro Text Style
TextStyle getBoldSFProTexteStyle(
    {double fSize = FontSize.size14,
    required Color color,
    String fontFamily = ConstFont.sfProText}) {
  return _getTextStyle(
    fSize,
    color,
    CustomeFontWeight.bold,
    fontFamily,
  );
}

// Poppins Style
TextStyle getBoldPoppinsStyle(
    {double fSize = FontSize.size16,
    required Color color,
    String fontFamily = ConstFont.poppins}) {
  return _getTextStyle(
    fSize,
    color,
    CustomeFontWeight.bold,
    fontFamily,
  );
}
