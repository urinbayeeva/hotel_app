import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_page/find_page/find_page_view.dart';
import '../intro_page/intro_view.dart';
import '../widgets/code_text_field.dart';
import '../widgets/timer.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 6, top: 21),
          child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const IntroPage()));
              },
              child: SvgPicture.asset(
                "assets/icons/back.svg",
                width: 24,
                height: 24,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 21, right: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                    text: "Verify ",
                    style: TextStyle(
                      color: const Color(0xFF000000).withOpacity(0.81),
                      fontFamily: GoogleFonts.openSans().fontFamily,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "Account",
                        style: TextStyle(
                          color: const Color(0xFF007EF2),
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Please enter the verification code sent to example@gmail.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF000000).withOpacity(0.55),
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.nunito().fontFamily,
              ),
            ),
            const SizedBox(height: 22,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for(int i=0; i<4; i++ ) const CodeTextField(),
              ],
            ),
            const SizedBox(height: 24,),
            MyTimerScreen(),
            const SizedBox(height: 8,),
            Center(
              child: RichText(
                text: TextSpan(
                    text: "Didn't receive the code? ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: GoogleFonts.openSans().fontFamily,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: "Resend again",
                        style: TextStyle(
                            color: const Color(0xFFFFD700),
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            MyTimerScreen();
                          },
                      ),
                    ]),
              ),
            ),
            const SizedBox(height: 24,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FindPage()));
            },
              child: Container(
                width: 320,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF007EF2),
                ),
                child: Center(
                  child: Text("Verify",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.roboto().fontFamily
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
