import 'package:diva/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font14Blackw400 = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );
  static TextStyle font10DarkGreyw400Roboto = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManagers.darkGreyColor,
  );

  static TextStyle font10Whitew400Roboto = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );
}
