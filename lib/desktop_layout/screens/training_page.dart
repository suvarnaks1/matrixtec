import 'package:dotdartweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Online Course Training",
              style: GoogleFonts.lilitaOne(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 450,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/traing.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Online Training Courses in Flutter Development, App Development,\n''Web Development, Node.js, Java, C, and More...',
                      style: GoogleFonts.aladin(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColors.robinEdgeBlue),
                    ),
                     Text(
  'Unlock your potential with our expert-led online training courses, designed to equip you with the skills \n''you need to excel in today’s fast-paced tech industry.\n ''Whether you\'re a beginner or looking to enhance your existing skills, \n''our comprehensive courses cover a wide range of topics in software development.',
  style: GoogleFonts.actor(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.white, 
  ),
  
),
    Text(
  'Unlock your potential with our expert-led online training courses, designed to equip you with the skills \n''you need to excel in today’s fast-paced tech industry.\n ''Whether you\'re a beginner or looking to enhance your existing skills, \n''our comprehensive courses cover a wide range of topics in software development.',
  style: GoogleFonts.actor(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.white, 
  ),
  
),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      'Why Choose Our Online Training?',
      style: GoogleFonts.lilitaOne(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.robinEdgeBlue,
      ),
    ),
    SizedBox(height: 16), // Space between title and list

    Text(
      '• Expert Instructors: Learn from industry professionals with years of experience.',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    SizedBox(height: 8), // Space between points

    Text(
      '• Hands-on Projects: Work on real-world projects to build your portfolio.',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    SizedBox(height: 8),

    Text(
      '• Flexible Learning: Study at your own pace, from anywhere in the world.',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    SizedBox(height: 8),

    Text(
      '• Lifetime Access: Get lifetime access to course materials and updates.',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  ],
)


                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
