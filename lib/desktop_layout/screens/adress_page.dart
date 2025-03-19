import 'package:dotdartweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdressPage extends StatelessWidget {
  const AdressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '9747994362\n' 'dotdart18@gmail.com\n' 'Copyright @2024',
            style: GoogleFonts.abel(fontSize: 16,fontWeight: FontWeight.bold,color: AppColors.robinEdgeBlue
            ),
          )
        ],
      ),
    );
  }
}
