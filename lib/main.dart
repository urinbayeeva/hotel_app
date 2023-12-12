import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/account_page/account.dart';
import 'package:hotel_booking/pages/account_page/create_account.dart';
import 'package:hotel_booking/pages/account_page/verify_code.dart';
import 'package:hotel_booking/pages/home_page/booking_page/booking_page_view.dart';
import 'package:hotel_booking/pages/home_page/hotel_details_page/hotel_details.dart';
import 'package:hotel_booking/pages/home_page/payment/payment_page.dart';
import 'package:hotel_booking/pages/home_page/recommending_page/recommend_view.dart';
import 'package:hotel_booking/pages/intro_page/intro_view.dart';
import 'package:hotel_booking/pages/last_page/last_page.dart';
import 'package:hotel_booking/pages/splash_screen/splash_page.dart';
import 'pages/home_page/find_page/find_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}
