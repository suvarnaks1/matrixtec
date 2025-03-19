import 'package:dotdartweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contact Me",
              style: GoogleFonts.lilitaOne(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            buildTextField("Your Name", Icons.person),
            SizedBox(height: 10),
            buildTextField("Your Email", Icons.email),
            SizedBox(height: 10),
            buildTextField("Your Message", Icons.message),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text("Send Me", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Or Reach Me On",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialIcon(Icons.phone, "Phone", ""),
                socialIcon(Icons.email, "Email", "mailto:dotdart18@gmail.com"),
                socialIcon(Icons.camera_alt, "Instagram", "https://www.instagram.com/dot_dart__/"),
                socialIcon(Icons.business, "LinkedIn", "https://www.linkedin.com/in/dot-dart-582519351"),
                socialIcon(Icons.apple, "X", ""),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText, IconData icon, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFF102A43),
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(color: Colors.white70),
      ),
      style: TextStyle(color: Colors.white),
    );
  }

  Widget socialIcon(IconData icon, String label, String url) {
    return GestureDetector(
      onTap: () async {
        Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          print("Could not launch $url");
        }
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xFF112D4E),
              radius: 25,
              child: Icon(icon, color: Colors.white, size: 30),
            ),
          ),
          SizedBox(height: 5),
          Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }
}
