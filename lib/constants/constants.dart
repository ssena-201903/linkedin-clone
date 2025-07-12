
import 'package:flutter/material.dart';

class Constants {
  // app main color
  static final mainColor = Color(0xff0966C3);
  static final mainWhiteTone = Colors.white;
  static final bgPageColor = Color(0xffE9E6DE);
  static final mainGreenColor = Color(0xff017550);
  static final mainDarkGreyColor = const Color.fromARGB(255, 104, 104, 104);

  // appbar
  static final appbarIconColor = mainDarkGreyColor;
  static final double sliverAppbarHeight = 50;
  static final double appbarSizedBox = 16;
  static final double appbarCircleAvatarRadius = 16;
  static final double appbarSearchHeight = 30;
  static final double appbarSearchIconSize = 10;
  static final double appbarIconSize = 24;

  // tabbar
  static final FontWeight tabbarLabelWeight = FontWeight.w600;
  static final tabbarUnselectedLabelColor = mainDarkGreyColor;
  static final tabbarSelectedLabelColor = mainGreenColor;
  static final double tabbarFontsize = 16;

  // background tones
  static final backGroundBlueTone = Color(0xffE9F3FF);

  // button
  static final EdgeInsets buttonPadding = EdgeInsets.symmetric(vertical: 4, horizontal: 12);
  static final double buttonElevation = 0;
  static final FontWeight buttonTextWeight = FontWeight.w600;

  // outlined button
  static final outlinedButtonForegroundColor = const Color.fromARGB(193, 0, 0, 0);
  static final outlinedButtonSideColor = Colors.black38;
  
  // elevated button 
  static final buttonBgGreen = mainGreenColor;
  static final buttonBgBlue = mainColor;
  static final buttonTextColor = Colors.white;

  // verticalDivider
  static final verticalDividerColor = Colors.black12;

  // horizontal dividers
  static final horizontalDividerColor = const Color.fromARGB(24, 0, 0, 0);
}