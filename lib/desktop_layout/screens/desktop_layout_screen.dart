import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import 'aboutme.dart';
import 'adress_page.dart';
import 'contact_screen.dart';
import 'myservices.dart';
import 'training_page.dart';
import 'myProjects.dart';

class DesktopLayoutScreen extends StatefulWidget {
  const DesktopLayoutScreen({super.key});

  @override
  State<DesktopLayoutScreen> createState() => _DesktopLayoutScreenState();
}

class _DesktopLayoutScreenState extends State<DesktopLayoutScreen> {
  final ScrollController _scrollController = ScrollController();

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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showCourseSelectionPopup(context),
        backgroundColor: AppColors.lawGreen,
        label: Text('Online Courses',
            style: TextStyle(color: AppColors.pink, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildAppBarText(String text, GlobalKey key) {
    final isHover = ValueNotifier<bool>(false);

    return ValueListenableBuilder<bool>(
      valueListenable: isHover,
      builder: (context, hover, child) {
        return GestureDetector(
          onTap: () => _scrollToSection(key),
          child: MouseRegion(
            onEnter: (_) => isHover.value = true,
            onExit: (_) => isHover.value = false,
            child: Text(
              text,
              style: GoogleFonts.bebasNeue(
                  color: hover ? AppColors.lawGreen : AppColors.themeColor ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSection(GlobalKey key, Widget child) {
    return Container(
      key: key,
      padding: EdgeInsets.symmetric(vertical: 50),
      child: child,
    );
  }

  void _scrollToSection(GlobalKey key) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = key.currentContext;
      if (context != null) {
        final renderBox = context.findRenderObject() as RenderBox;
        final offset = renderBox.localToGlobal(Offset.zero);
        _scrollController.animateTo(
          offset.dy + _scrollController.offset - 80,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _showCourseSelectionPopup(BuildContext context) {
    String? selectedCourse;
    List<String> courses = [
      'Flutter', 'Dart', 'Java', 'C', 'Node.js', 'App Development', 'Web Development'
    ];

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              backgroundColor: Colors.transparent,
              child: Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.bgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Select a Course',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.robinEdgeBlue),
                    ),
                    SizedBox(height: 10),
                    DropdownButton<String>(
                      value: selectedCourse,
                      hint: Text('Choose a course', style: TextStyle(color: AppColors.robinEdgeBlue)),
                      isExpanded: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCourse = newValue;
                        });
                      },
                      items: courses.map((String course) {
                        return DropdownMenuItem<String>(
                          value: course,
                          child: Text(course),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 20),
                    _buildTextField('Name'),
                    SizedBox(height: 10),
                    _buildTextField('Phone'),
                    SizedBox(height: 10),
                    _buildTextField('Email'),
                      SizedBox(height: 10),
                       SizedBox(
                         height: 50,
                         width: 150,
                         child: ElevatedButton(
                           onPressed: () {},
                           style: ElevatedButton.styleFrom(
                             backgroundColor:
                                  AppColors.robinEdgeBlue,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                             ),
                             padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                           ),
                           child: Text("Submit", style: TextStyle(color: Colors.white)),
                         ),
                       ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildTextField(String hintText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.aqua,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2)],
      ),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 10),
          ),
          style: TextStyle(fontSize: 16, color: AppColors.robinEdgeBlue),
        ),
      ),
    );
  }
}
