import 'package:flutter/material.dart';

const kSecondaryColor = Color(0xFFFE6D8E);
const kTextColor2 = Color(0xFF12153D);
const kTextLightColor = Color(0xFF9A9BB2);
const kFillStarColor = Color(0xFFFCC419);

//const kDefaultPadding = 20.0;

const kDefaultShadow = BoxShadow(
  offset: Offset(0, 4),
  blurRadius: 4,
  color: Colors.black26,
);

const kPrimaryColor = Color(0xFF0C9869);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;

const Color primaryColor = Color(0xFF473F97);

Color firstColor = Color(0XFFFC4A1F);
Color secondColor = Color(0XFFAF1055);
Color primaryTextColor = Color(0XFF5F6368);
Color secondaryTextColor = Color(0XFFE93B2D);
Color tertiaryTextColor = Color(0XFFA7A7A7);
Color logoTintColor = Color(0XFFFCE3E0);
Color opacityCOlor = Colors.white.withOpacity(0.9);

Color primaryTextColor2 = Color(0xFF414C6B);
Color secondaryTextColor2 = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color navigationColor = Color(0xFF6751B5);
Color gradientStartColor = Color(0xFF0050AC);
Color gradientEndColor = Color(0xFF9354B9);

LinearGradient appGradient = LinearGradient(colors: [firstColor, secondColor]);

const COLOR_BLACK = Colors.black;
const COLOR_GREY = Colors.grey;

const COLOR_WHITE = Colors.white;
const COLOR_DARK_BLUE = Colors.blue;

const buttonTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
);

const chartLabelsTextStyle = TextStyle(
  color: Colors.grey,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
);

const tabTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
);

TextStyle userNameTextStyle = TextStyle(
    fontSize: 32, color: primaryTextColor, fontWeight: FontWeight.w500);

TextStyle rankTextStyle =
    TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold);

TextStyle hoursPlayedLabelTextStyle = TextStyle(
  fontSize: 12,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

TextStyle hoursPlayedTextStyle = TextStyle(
  fontSize: 28,
  color: secondaryTextColor,
  fontWeight: FontWeight.normal,
);

TextStyle headingOneTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

TextStyle headingTwoTextStyle = TextStyle(
  fontSize: 14,
  color: Colors.grey.shade900,
  fontWeight: FontWeight.bold,
);

TextStyle bodyTextStyle = TextStyle(
  fontSize: 14,
  color: Colors.grey.shade600,
);

TextStyle newGameTextStyle =
    TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700);

TextStyle newGameNameTextStyle =
    TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700);

TextStyle playWhiteTextStyle =
    TextStyle(fontSize: 14, color: firstColor, fontWeight: FontWeight.w700);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
  headline2:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
  headline3:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
  headline4:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
  headline5:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
  headline6:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(
      color: COLOR_BLACK,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.5),
  bodyText2: TextStyle(
      color: COLOR_GREY,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.5),
  subtitle1:
      TextStyle(color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
  subtitle2:
      TextStyle(color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400),
);

const TextTheme TEXT_THEME_SMALL = TextTheme(
  headline1:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
  headline2:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
  headline3:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 18),
  headline4:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
  headline5:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
  headline6:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(
      color: COLOR_BLACK,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5),
  bodyText2: TextStyle(
      color: COLOR_GREY,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5),
  subtitle1:
      TextStyle(color: COLOR_BLACK, fontSize: 10, fontWeight: FontWeight.w400),
  subtitle2:
      TextStyle(color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400),
);
