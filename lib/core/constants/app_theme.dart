import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kprimaryColor = Color(0xFF6C63FF);
const Color ksecondaryColor = Color(0xFFE5E5E5);
const Color ktextColor = Color(0xFF000000);
const Color kWhiteColor = Color(0xFFFFFFFF);
const Color kDangerColor = Color(0xFFE57373);

const Color khintTextColor = Color(0xFFA5A5A5);

// font family
const String fontFamily = 'Poppins';

// Text Styles
TextStyle headingTextStyle = GoogleFonts.oxanium(
  fontSize: 28.sp,
  color: ktextColor,
  fontWeight: FontWeight.bold,
);

TextStyle subHeadingTextStyle = GoogleFonts.oxanium(
  fontSize: 20.sp,
  color: ktextColor,
  fontWeight: FontWeight.w500,
);

TextStyle hintTextStyle = GoogleFonts.oxanium(
    fontSize: 15.sp, fontWeight: FontWeight.w500, color: khintTextColor);

TextStyle textfieldPlaceholderStyle = GoogleFonts.oxanium(
    fontSize: 16.sp, fontWeight: FontWeight.w500, color: kprimaryColor);

TextStyle snackbarTextStyle = GoogleFonts.oxanium(
    fontSize: 14.sp, fontWeight: FontWeight.w500, color: kWhiteColor);

TextStyle appbarStyle = GoogleFonts.oxanium(
    fontSize: 17.sp, fontWeight: FontWeight.w700, color: kWhiteColor);

//Friend Tile/ChatRoom Tile
TextStyle friendTileNameStyle = GoogleFonts.oxanium(
    fontSize: 16.sp, fontWeight: FontWeight.w500, color: ktextColor);
TextStyle friendTileLastMessageStyle = GoogleFonts.oxanium(
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
  color: ktextColor,
);
TextStyle friendTileTimeStyle = GoogleFonts.oxanium(
    fontSize: 12.sp, fontWeight: FontWeight.w400, color: ktextColor);
