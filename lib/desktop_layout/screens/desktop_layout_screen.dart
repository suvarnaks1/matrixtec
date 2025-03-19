import 'package:dotdartweb/desktop_layout/screens/aboutme.dart';
import 'package:dotdartweb/desktop_layout/screens/adress_page.dart';
import 'package:dotdartweb/desktop_layout/screens/contact_screen.dart';
import 'package:dotdartweb/desktop_layout/screens/myservices.dart';
import 'package:dotdartweb/desktop_layout/screens/training_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import 'myProjects.dart';

class DesktopLayoutScreen extends StatefulWidget {
  const DesktopLayoutScreen({super.key});

  @override
  State<DesktopLayoutScreen> createState() => _DesktopLayoutScreenState();
}

class _DesktopLayoutScreenState extends State<DesktopLayoutScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.bgColor2,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/dotcanvapic.jpeg'),
            ),
            SizedBox(width: 20),
            Text('Dot Dart', style: GoogleFonts.bebasNeue(color: AppColors.white)),
            Spacer(),
            Text('About Me', style: GoogleFonts.bebasNeue(color: AppColors.themeColor)),
            SizedBox(width: 30),
            Text('My Services', style: GoogleFonts.bebasNeue(color: AppColors.themeColor)),
            SizedBox(width: 30),
            Text('My Projects', style: GoogleFonts.bebasNeue(color: AppColors.themeColor)),
            SizedBox(width: 30),
            Text('Training', style: GoogleFonts.bebasNeue(color: AppColors.themeColor)),
           
            SizedBox(width: 30),
            Text('Contact Me', style: GoogleFonts.bebasNeue(color: AppColors.themeColor)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [AboutMe(), MyServices(), MyProjects(),TrainingPage(),
           ContactScreen(),
          AdressPage()],
        ),
      ),
 floatingActionButton: SizedBox(
  width: 150, // Set your desired width
  height: 50, // Optional: Adjust height
  child: FloatingActionButton.extended(
    onPressed: () {
     
    },
    backgroundColor: AppColors.lawGreen,
    label: Text(
      'Online Courses',
      style: TextStyle(color: AppColors.pink, fontWeight: FontWeight.bold),
    ),
  ),
),

    ); 
  }


  
}



class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  // Hover state for the text
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.blueGrey, // AppColors.bgColor2
      title: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/dotcanvapic.jpeg'),
          ),
          SizedBox(width: 20),
          // Hoverable text with animation
          _buildHoverableText('Dot Dart', isHovered, Colors.white),
          Spacer(),
          _buildHoverableText('About Me', isHovered, Colors.blue), // AppColors.themeColor
          SizedBox(width: 30),
          _buildHoverableText('My Services', isHovered, Colors.blue), // AppColors.themeColor
          SizedBox(width: 30),
          _buildHoverableText('My Projects', isHovered, Colors.blue), // AppColors.themeColor
          SizedBox(width: 30),
          _buildHoverableText('Training', isHovered, Colors.blue), // AppColors.themeColor
          SizedBox(width: 30),
          _buildHoverableText('Contact Me', isHovered, Colors.blue), // AppColors.themeColor
        ],
      ),
    );
  }

  // Function to build hoverable text
  Widget _buildHoverableText(String text, bool isHovered, Color color) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 200),
        style: GoogleFonts.bebasNeue(
          color: isHovered ? Colors.orange : color, // Hover color change
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        child: Text(text),
      ),
    );
  }
}
