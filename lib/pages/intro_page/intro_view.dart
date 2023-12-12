import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/home_page/find_page/find_page_view.dart';

import '../account_page/account.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          SizedBox(
            width: 500,
            height: 470,
             child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 100),
                      Padding(
                        padding: const EdgeInsets.only(left: 68),
                        child: Container(
                          width: 283,
                          height: 315,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(315),
                            color: Color(0xFF007EF2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 45,
                    right: -15,
                    bottom: 0,
                    left: 0,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          "assets/images/bcg.png",
                          width: 285,
                          height: 325,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: -40,
                    child: Image.asset(
                      "assets/images/first.png",
                      width: 117,
                      height: 118,
                    ),
                  ),
                  Positioned(
                    top: 350,
                    left: -40,
                    child: Image.asset(
                      "assets/images/second.png",
                      width: 117,
                      height: 109,
                    ),
                  ),
                ],
              )

          ),
           const SizedBox(height: 1,),
           Text("Unleash Your Inner Traveller",
          style: TextStyle(
            color: const Color(0xFF007EF2),
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: GoogleFonts.nunito().fontFamily,
          ),
          ),
          const SizedBox(height: 3,),
           Text("Your passport to a world of extraordinary hotel experiences. Join us today and unlock a realm of\ncomfort, luxury, and adventure.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.nunito().fontFamily,
          ),
          ),
          const SizedBox(height: 34,),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const FindPage()));
          },
              child: Container(
            width: 318,
            height: 47,
            decoration: BoxDecoration(
              color: const Color(0xFF007EF2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Start Exploring",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.openSans().fontFamily,
                  ),
                ),
                const SizedBox(width: 8,),
                Image.asset("assets/images/arrow_2.png", width: 30, height: 26,)
              ],
            ),
          ),
          ),
          const SizedBox(height: 12,),
          RichText(
              text: TextSpan(
                text: "Already have an account?",
                style: TextStyle(
                  color: const Color(0xFF000000).withOpacity(0.60),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                ),
                children: [
                  TextSpan(
                  text: "  Log in",
                  style: TextStyle(
                    color: const Color(0xFFFFD700),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    decoration: TextDecoration.underline,
                  ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const WelcomeAccount()));
                      },
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
