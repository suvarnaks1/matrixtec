import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "My Services",
            style: GoogleFonts.lilitaOne(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 2,
                shrinkWrap: true,
                physics:
                    NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
                children: [
                  _buildServiceCard("Software Development", Colors.white),
                  _buildServiceCard("App Development", Colors.yellow),
                  _buildServiceCard("Web Development", Colors.blue),
                  _buildServiceCard("BCA Projects", Colors.green),
                  _buildServiceCard("BSc Projects", Colors.orange),
                  _buildServiceCard("Tech Education", Colors.red),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard(String title, Color textColor) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF0B1F3A), // Card background color
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(fontSize: 16, color: textColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
