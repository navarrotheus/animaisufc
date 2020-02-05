import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double LargeTextSize = 26.0;
const double MediumTextSize = 20.0;
const double BodyTextSize = 16.0;
const double SmallTextSize = 12.0;

const String FontNameTitle = 'Mitr';
const String FontNameDescription = 'Inconsolata';

// Textos

// Adopt
// Bottom Bar
const BottomBarTextStyle = TextStyle(
  fontFamily: FontNameTitle,
  fontWeight: FontWeight.w300,
  fontSize: SmallTextSize,
);

// Categories
const TitleCategoriesStyle = TextStyle(
  fontFamily: FontNameTitle,
  fontWeight: FontWeight.w500,
  fontSize: MediumTextSize,
);
const TitleCategoriesCardStyle = TextStyle(
  fontFamily: FontNameTitle,
  fontWeight: FontWeight.w400,
  fontSize: 12.0,
);
const BodyCategoriesCardStyle = TextStyle(
  fontFamily: FontNameDescription,
  fontWeight: FontWeight.w400,
  fontSize: 10.0,
);

// Animals
const TitleAnimaisStyle = TextStyle(
  fontFamily: FontNameTitle,
  fontWeight: FontWeight.w500,
  fontSize: MediumTextSize,
);

const TitleAnimalCardStyle = TextStyle(
  fontSize: 17,
  fontFamily: FontNameTitle,
  fontWeight: FontWeight.w400,
);

// Cores
const AppBackgroundColor = Color(0xFFF9F9F9);
const ButtonColor = Color(0xFF1EA296);
const TextColor = Color(0xFF26CABF);
const CategoriesIconColor = Color(0xFFEBEBEB);

// Ícones
// Adopt
final maleIcon = SvgPicture.asset(
  'assets/icons/male.svg',
  width: 13,
  height: 12,
  color: Color(0xFF85A2FF),
);

final femaleIcon = SvgPicture.asset(
  'assets/icons/female.svg',
  width: 13,
  height: 12,
  color: Color(0xFFF782FF),
);

final controlsIcon = SvgPicture.asset(
  'assets/icons/controls.svg',
  color: const Color.fromARGB(160, 0, 0, 0),
);
