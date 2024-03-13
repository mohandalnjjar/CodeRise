import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static const TextStyle styleSemiBold24 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 24);
  static const TextStyle styleSemiBold16 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 15);

  static const TextStyle styleSemiBold27 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 27);

  static const TextStyle styleRegular18 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 18);

  static const TextStyle styleRegular16 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 16);

  static const TextStyle styleBold =
      TextStyle(fontWeight: FontWeight.w700, fontSize: 20);

  static const TextStyle styleRegular14 = TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );

  static const TextStyle styleGtSectraRegular30 = TextStyle(
    fontSize: 30,
    fontFamily: 'GTSectra',
  );

  static TextStyle styleMonserateRegular18 = GoogleFonts.montserrat(
    color: Colors.grey,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
   static TextStyle styleMonserateRegular14 = GoogleFonts.montserrat(
    color: Colors.grey,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
