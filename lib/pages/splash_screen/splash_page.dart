import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/intro_page/intro_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () =>
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const IntroPage()),
        ),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF007EF2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/splash_icon.svg"),
            const SizedBox(height: 9),
            // Text Animation
            Text(
              "WanderStay",
              style: TextStyle(
                fontFamily: GoogleFonts
                    .nunito()
                    .fontFamily,
                fontSize: 45,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            // Other Text
            Text(
              "Find Your Stay, Your Way",
              style: TextStyle(
                fontFamily: GoogleFonts
                    .nunito()
                    .fontFamily,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xFFFFD700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
