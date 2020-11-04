import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultElevation = 1.50;

/// scaffold > background
const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

/// scaffold > title
var ScaffoldAppBarTitle =  GoogleFonts.roboto(
  fontSize: 24,
  color: Colors.blue,
  decoration: TextDecoration.underline,
);

/// scaffold > icon text
var ScaffoldAppBarIconText =  GoogleFonts.roboto(
  color: Colors.blue, //Color.fromRGBO(105, 105, 105, 1),
);

/// scaffold > drawer > navigation text
var ScaffoldAppBarDrawer =  GoogleFonts.roboto(
  fontSize: 15,
  color: Colors.white,
);

/// content > header > Title text
var contentTitleFontSize =  GoogleFonts.roboto(
  fontSize: 44,
  color: Colors.black,
);

/// content > header > SubTitle text
var contentSubTitleFontSize =  GoogleFonts.roboto(fontSize: 26, color: Colors.black, fontWeight: FontWeight.w500);

/// content > header > Normal text
var contentNormalFontSize = GoogleFonts.roboto(
  fontSize: 16,
  color: Colors.black,
);
var contentNormalWhiteFontSize = GoogleFonts.roboto(
  fontSize: 16,
  color: Colors.white,
);
// TextStyle(
//   fontSize: 16,
//   color: Colors.black,
// );
var contentNormalGreyFontSize = GoogleFonts.roboto(
  color: Colors.grey,
  fontSize: 20,
);

/// Card > Title
var CardTitle =  GoogleFonts.roboto(color: Color.fromRGBO(105, 105, 105, 1), fontSize: 15.0, fontWeight: FontWeight.bold);

// Input > focusBorder
const FormFocusBorder = OutlineInputBorder(
    borderSide: BorderSide(
  color: Color.fromRGBO(44, 160, 28, 1),
));

// Input > labelColor
const FormInputLabel = BorderSide(
  color: Color.fromRGBO(0, 0, 0, 1),
);

// Input > labelStyle
const FormInputLabelStyle = TextStyle(color: Color.fromRGBO(105, 105, 105, 1));

// PopupMenuButton > Style
var PopupMenuItemTextStyle =  GoogleFonts.roboto(
  fontWeight: FontWeight.w600,
  fontSize: 12.0,
  color: Colors.blue,
);

// SubNavigationButton > Style > Non-Active
var subNavNonActiveTextStyle =  GoogleFonts.roboto(fontWeight: FontWeight.normal);

const BoxDecoration blueBorderDecoration = BoxDecoration(
  color: Colors.lightBlueAccent,
  shape: BoxShape.rectangle,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10.0),
    bottomRight: Radius.circular(10.0),
    topRight: Radius.circular(10.0),
    bottomLeft: Radius.circular(10.0),
  ),
);

BoxDecoration whiteBorderDecoration = BoxDecoration(color: Colors.white70, shape: BoxShape.rectangle, border: Border.all(width: 1.0, color: Colors.grey));
