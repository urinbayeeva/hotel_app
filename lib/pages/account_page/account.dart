import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/account_page/create_account.dart';
import 'package:hotel_booking/pages/account_page/verify_code.dart';
import 'package:hotel_booking/pages/intro_page/intro_view.dart';
import 'package:hotel_booking/pages/widgets/text_field.dart';

import '../home_page/find_page/find_page_view.dart';

class WelcomeAccount extends StatelessWidget {
  const WelcomeAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 6, top: 21),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => IntroPage()));
            },
              child: SvgPicture.asset("assets/icons/back.svg", 
                width: 24, 
                height: 24,)
          ),
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
                    text: "Welcome ",
                    style: TextStyle(
                      color: const Color(0xFF000000).withOpacity(0.81),
                      fontFamily: GoogleFonts.openSans().fontFamily,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "Back",
                        style: TextStyle(
                          color: const Color(0xFF007EF2),
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Text("We missed you! Login to continue your journey\nwith us.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF000000).withOpacity(0.55),
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.nunito().fontFamily,
              ),
            ),
            const SizedBox(height: 24,),
            const FieldText(label: "Email Address", icon: Icon(Icons.email_outlined, size: 18, color: Color(0xFF7F7F7F)),),
            const SizedBox(height: 27,),
            const FieldText(label: "Password", icon: Icon(Icons.vpn_key_outlined, size: 18, color: Color(0xFF7F7F7F)),),
            const SizedBox(height: 27,),
            TextButton(onPressed: (){},
                child: Text("Forgot Password?",
                style: TextStyle(
                  color: const Color(0xFFFFD700),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  decoration: TextDecoration.underline,
                  decorationColor: const Color(0xFFFFD700),
                ),
                )),
            const SizedBox(height: 24,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyCode()));
            },
              child: Container(
                width: 320,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF007EF2),
                ),
                child: Center(
                  child: Text("Login",
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
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 63,
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(width: 8,),
                Text("Or continue with",
                  style: TextStyle(
                      color: const Color(0xFF7F7F7F),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.roboto().fontFamily
                  ),
                ),
                const SizedBox(width: 11,),
                Container(
                  width: 63,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 22,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.1),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: SvgPicture.asset("assets/icons/google.svg"),
                  ),
                ),
                const SizedBox(width: 21,),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.1),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: SvgPicture.asset("assets/icons/facebook.svg"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 44,),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Does not have an account?",
                  style: TextStyle(
                    color: const Color(0xFF000000).withOpacity(0.60),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  ),
                  children: [
                    TextSpan(
                      text: "  Sign up",
                      style: TextStyle(
                        color: const Color(0xFFFFD700),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const CreateAccount()));
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


