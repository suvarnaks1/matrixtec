import 'package:dotdartweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      height: 560,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 200,
            backgroundImage: AssetImage('assets/dotcanvapic.jpeg'),
          ),
          const SizedBox(width: 40),
          Expanded(
            child: SizedBox(
              width: 500,
              child: Text(
                '''Welcome to Dot Dart, where technology meets creativity, and innovation fuels every project! 🚀
I’m Suvarna KS, a passionate Flutter developer, software engineer, and entrepreneur dedicated to building impactful digital solutions. With a strong foundation in mobile app development, UI/UX design, and artificial intelligence, I thrive on creating applications that are not only functional but also visually appealing.
My journey in the tech industry began with a deep curiosity for problem-solving and a passion for coding. Over time, I realized the power of technology in transforming businesses, enhancing user experiences, and simplifying complex tasks. With that vision, I founded Dot Dart—a space where ideas turn into reality through innovative mobile and web solutions.
Dot Dart is more than just a development studio; it's a creative hub where every project is approached with precision, dedication, and a futuristic mindset. Whether it’s building a robust mobile application, implementing AI-powered features, or crafting a scalable IT solution, I ensure that each product meets high industry standards.''',
                style: GoogleFonts.kanit(
                    fontSize: 20,
                    color: AppColors.white,
                    height: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
