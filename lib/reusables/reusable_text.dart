import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text textWidget(
        {required String text,
        required Color color,
        required double size,
        required bool isHead}) =>
    Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: size,
        color: color,
        fontWeight: isHead ? FontWeight.bold : FontWeight.normal,
      ),
    );
