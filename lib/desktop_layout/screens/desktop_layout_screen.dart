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
  // ScrollController to control scrolling
  final ScrollController _scrollController = ScrollController();

  // Global keys to link sections with AppBar
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _myServicesKey = GlobalKey();
  final GlobalKey _myProjectsKey = GlobalKey();
  final GlobalKey _trainingKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _addressKey = GlobalKey();

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
            _buildAppBarText('About Me', _aboutMeKey),
            SizedBox(width: 30),
            _buildAppBarText('My Services', _myServicesKey),
            SizedBox(width: 30),
            _buildAppBarText('My Projects', _myProjectsKey),
            SizedBox(width: 30),
            _buildAppBarText('Training', _trainingKey),
            SizedBox(width: 30),
            _buildAppBarText('Contact Me', _contactKey),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            _buildSection(_aboutMeKey, AboutMe()),
            _buildSection(_myServicesKey, MyServices()),
            _buildSection(_myProjectsKey, MyProjects()),
            _buildSection(_trainingKey, TrainingPage()),
            _buildSection(_contactKey, ContactScreen()),
            _buildSection(_addressKey, AdressPage()),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 150,
        height: 50,
        child: FloatingActionButton.extended(
          onPressed: () {
            // Action when the button is clicked
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

  // Function to create AppBar text with scroll functionality
  Widget _buildAppBarText(String text, GlobalKey key) {
    return GestureDetector(
      onTap: () {
        _scrollToSection(key);
      },
      child: Text(
        text,
        style: GoogleFonts.bebasNeue(color: AppColors.themeColor),
      ),
    );
  }

  // Function to wrap sections with GlobalKey reference
  Widget _buildSection(GlobalKey key, Widget child) {
    return Container(
      key: key, // Assign key to container instead of the widget itself
      child: child,
    );
  }

  // Function to scroll to the desired section
  void _scrollToSection(GlobalKey key) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }
}
