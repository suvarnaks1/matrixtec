import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotdartweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "My Projects",
              style: GoogleFonts.lilitaOne(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
              ),
              items: [
                // Carousel item 1
                Row(
                  children: [
                    Container(
                      height: 2000,
                      width: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/ecomerce.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Discover a seamless shopping experience with  \n'
                      'Dot Dart’s e-commerce platform!\n'
                      'We bring the best products right to \n '
                      'your fingertips, from electronics to fashion and more.\n'
                      'Our user-friendly platform allows you to browse,\n'
                      'compare, and purchase items easily from home.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                // Carousel item 2
                Row(
                  children: [
                    Container(
                      height: 2000,
                      width: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/matrimonyapp.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Our easy-to-use interface lets you create\n'
                      'a personalized profile,\n'
                      'browse through profiles of other members,\n'
                      'and communicate directly\n'
                      'with your matches.advanced search filters\n'
                      'and secure environment\n'
                      'Dot Dart Matrimony ensures a safe, \n'
                      'enjoyable, and meaningful journey\n'
                      'toward finding the right partner.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                // Carousel item 3
                Row(
                  children: [
                    Container(
                      height: 1000,
                      width: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Ai.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'At Dot Dart, we embrace the power of Artificial Intelligence\n'
                      'to create smarter, more efficient, and future-ready \n'
                      'digital solutions. Our AI-driven projects aim to \n'
                      'revolutionize industries by integrating machine learning,\n'
                      'natural language processing, and automation into web and\n '
                      'mobile applications.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
