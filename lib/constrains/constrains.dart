import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kHintStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
  color: Colors.white,
));

final kLabelStyle = GoogleFonts.openSans(
    textStyle:
        const TextStyle(color: Colors.white, fontWeight: FontWeight.normal));

final kBoxDecoration = BoxDecoration(
    color: const Color(0xFF6CA8F1),
    borderRadius: BorderRadius.circular(10),
    boxShadow: const [
      BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 3))
    ]);
