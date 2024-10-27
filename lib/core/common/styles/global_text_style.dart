import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/core/utils/constants/colors.dart';


TextStyle getTextStyle({
  double fontSize = 14.0,
  FontWeight fontWeight = FontWeight.w400,
  // double lineHeight = 21.0,
  TextAlign textAlign = TextAlign.center,
  Color color =AppColors.text,
}) {
  return GoogleFonts.roboto(
    fontSize: fontSize.sp,
    fontWeight: fontWeight,
    // height: fontSize.sp/ lineHeight.sp,
    color: color,
  );
}