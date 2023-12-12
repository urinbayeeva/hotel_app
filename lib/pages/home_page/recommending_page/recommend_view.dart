import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/home_page/hotel_details_page/hotel_details.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({super.key});

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  Color myBlueColor = const Color.fromRGBO(0, 126, 242, 0.12);

  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  double _startValue = 20.0;
  double _endValue = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FAFE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5FAFE),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 12, top: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Location",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              ),
              const SizedBox(height: 5,),
              Text("Bali, Indonesia",
                style: TextStyle(
                  color: const Color(0xFF007EF2),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoogleFonts.openSans().fontFamily,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset("assets/images/mdi_bell.png", width: 22, height: 22,),
          )
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.only(left: 25,top: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 143,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: myBlueColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/calendar.svg"),
                        Text("24 OCT-26 OCT",
                        style: TextStyle(
                          color: const Color(0xFF007EF2),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: GoogleFonts.openSans().fontFamily,
                        ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(width: 18,),
                  Container(
                      width: 100,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: myBlueColor,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("3 guests",
                            style: TextStyle(
                              color: const Color(0xFF007EF2),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: GoogleFonts.openSans().fontFamily,
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
             const SizedBox(height: 14,),
              Row(
                children: [
                Container(
                width: 248,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF7F7F7F), width: 1),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Color(0xFF7F7F7F)),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Hotel By Name',
                            hintStyle: TextStyle(color: Color(0xFF7F7F7F)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                 const SizedBox(width: 12,),
                  Container(
                    width: 57,
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF007EF2),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          _showNotificationDialog(context);
                        },
                        child: SvgPicture.asset(
                          "assets/icons/filter.svg",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 9,),
              Text("Recommended Hotels",
              style: TextStyle(
                color: const Color(0xFF007EF2),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.openSans().fontFamily,
              ),
              ),
              const SizedBox(height: 15,),
                    SizedBox(
                      width: double.infinity,
                      height: 263,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:[
                          Container(
                        width: 213,
                        height: 263,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(width: 0, color: Colors.white)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 8, right: 8

                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 197,
                                height: 134,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: const Color(0xFFFFD700), width: 1),
                                ),
                                child: Image.asset("assets/images/bcg_color.png", fit: BoxFit.cover,),
                              ),
                              const SizedBox(height: 9,),
                           Row(
                             children: [
                               Container(
                                 width: 52,
                                 height: 22,
                                 decoration: BoxDecoration(
                                   color: myBlueColor,
                                   borderRadius: BorderRadius.circular(10)
                                 ),
                                 child: Center(
                                   child: Text(
                                     "10% OFF",
                                     style: TextStyle(
                                       color: const Color(0xFF007EF2),
                                       fontSize: 7,
                                       fontWeight: FontWeight.w400,
                                       fontFamily: GoogleFonts.openSans().fontFamily,
                                     ),
                                   ),
                                 ),
                               ),
                               const SizedBox(width: 7,),
                               Container(
                                 width: 52,
                                 height: 22,
                                 decoration: BoxDecoration(
                                   color: myBlueColor,
                                     borderRadius: BorderRadius.circular(10)
                                 ),
                                 child: Center(
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       SvgPicture.asset("assets/icons/star.svg", width: 12, height: 12,),
                                       Text(
                                         "4.5",
                                         style: TextStyle(
                                           color: const Color(0xFF007EF2),
                                           fontSize: 7,
                                           fontWeight: FontWeight.w400,
                                           fontFamily: GoogleFonts.openSans().fontFamily,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               const SizedBox(width: 63),
                               SvgPicture.asset("assets/icons/blue_heart.svg"),
                             ],
                           ),
                             const SizedBox(height: 11,),
                              Text("AYANA Resort",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                              ),
                              ),
                              const SizedBox(height: 2,),
                              Row(
                                children: [
                                  const Icon(Icons.location_on_outlined, size: 10, color: Color(0xFF7F7F7F),),
                                  Text("Bali, Indonesia",
                                    style: TextStyle(
                                      color: const Color(0xFF7F7F7F),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              RichText(text: TextSpan(
                                children: [
                                  TextSpan(
                                  text: r"$200 - $500 USD",
                                  style: TextStyle(
                                    color: const Color(0xFF007EF2),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                  )
                              ),
                                  TextSpan(
                                      text: r"/night",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: GoogleFonts.roboto().fontFamily,
                                      )
                                  ),
                                ],
                          ),
                        ),
                            ],
                          ),
                        ),
          ),
                          const SizedBox(width: 17,),
                          Container(
                            width: 213,
                            height: 263,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(width: 0, color: Colors.white)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 8, right: 8

                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 197,
                                    height: 134,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: const Color(0xFFFFD700), width: 1),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Image.asset(
                                          "assets/images/hotel_2.jpg",
                                          fit: BoxFit.cover, // Use BoxFit.cover to crop the image
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 9,),
                                  Row(
                                    children: [
                                      Container(
                                        width: 52,
                                        height: 22,
                                        decoration: BoxDecoration(
                                            color: myBlueColor,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "10% OFF",
                                            style: TextStyle(
                                              color: const Color(0xFF007EF2),
                                              fontSize: 7,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: GoogleFonts.openSans().fontFamily,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 7,),
                                      Container(
                                        width: 52,
                                        height: 22,
                                        decoration: BoxDecoration(
                                            color: myBlueColor,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset("assets/icons/star.svg", width: 12, height: 12,),
                                              Text(
                                                "4.5",
                                                style: TextStyle(
                                                  color: const Color(0xFF007EF2),
                                                  fontSize: 7,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 63),
                                      SvgPicture.asset("assets/icons/blue_heart.svg"),
                                    ],
                                  ),
                                  const SizedBox(height: 11,),
                                  Text("AYANA Resort",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                  const SizedBox(height: 2,),
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on_outlined, size: 10, color: Color(0xFF7F7F7F),),
                                      Text("Bali, Indonesia",
                                        style: TextStyle(
                                          color: const Color(0xFF7F7F7F),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: GoogleFonts.roboto().fontFamily,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8,),
                                  RichText(text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: r"$300 - $500 USD",
                                          style: TextStyle(
                                            color: const Color(0xFF007EF2),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: GoogleFonts.roboto().fontFamily,
                                          )
                                      ),
                                      TextSpan(
                                          text: r"/night",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: GoogleFonts.roboto().fontFamily,
                                          )
                                      ),
                                    ],
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                      ],
                      ),
                    ),
              const SizedBox(height: 26,),
              Text("Business Accommodates",
                style: TextStyle(
                  color: const Color(0xFF007EF2),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.openSans().fontFamily,
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                height: 263,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:[
                    Container(
                      width: 213,
                      height: 263,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(width: 0, color: Colors.white)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 197,
                              height: 134,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: const Color(0xFFFFD700), width: 1),
                              ),
                              child: Image.asset("assets/images/cafe.png", fit: BoxFit.cover,),
                            ),
                            const SizedBox(height: 9,),
                            Row(
                              children: [
                                Container(
                                  width: 52,
                                  height: 22,
                                  decoration: BoxDecoration(
                                      color: myBlueColor,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Fast Wi-Fi",
                                      style: TextStyle(
                                        color: const Color(0xFF007EF2),
                                        fontSize: 7,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: GoogleFonts.openSans().fontFamily,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 7,),
                                Container(
                                  width: 90,
                                  height: 22,
                                  decoration: BoxDecoration(
                                      color: myBlueColor,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "AC Conference rooms",
                                      style: TextStyle(
                                        color: const Color(0xFF007EF2),
                                        fontSize: 7,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: GoogleFonts.openSans().fontFamily,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 11,),
                            Text("AYANA Resort",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                              ),
                            ),
                            const SizedBox(height: 2,),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined, size: 10, color: Color(0xFF7F7F7F),),
                                Text("Bali, Indonesia",
                                  style: TextStyle(
                                    color: const Color(0xFF7F7F7F),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8,),
                            RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                    text: r"$200 - $500 USD",
                                    style: TextStyle(
                                      color: const Color(0xFF007EF2),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: GoogleFonts.roboto().fontFamily,
                                    )
                                ),
                                TextSpan(
                                    text: r"/night",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: GoogleFonts.roboto().fontFamily,
                                    )
                                ),
                              ],
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 17,),
                    Container(
                      width: 213,
                      height: 263,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(width: 0, color: Colors.white)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 197,
                              height: 134,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: const Color(0xFFFFD700), width: 1),
                              ),
                              child:ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Image.asset(
                                    "assets/images/hotel_spa.jpeg",
                                    fit: BoxFit.cover, // Use BoxFit.cover to crop the image
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 9,),
                            Row(
                              children: [
                                Container(
                                  width: 52,
                                  height: 22,
                                  decoration: BoxDecoration(
                                      color: myBlueColor,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "In-room work stations",
                                      style: TextStyle(
                                        color: const Color(0xFF007EF2),
                                        fontSize: 7,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: GoogleFonts.openSans().fontFamily,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 7,),
                                Container(
                                  width: 90,
                                  height: 22,
                                  decoration: BoxDecoration(
                                      color: myBlueColor,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "AC Conference rooms",
                                      style: TextStyle(
                                        color: const Color(0xFF007EF2),
                                        fontSize: 7,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: GoogleFonts.openSans().fontFamily,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 11,),
                            Text("AYANA Resort",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                              ),
                            ),
                            const SizedBox(height: 2,),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined, size: 10, color: Color(0xFF7F7F7F),),
                                Text("Bali, Indonesia",
                                  style: TextStyle(
                                    color: const Color(0xFF7F7F7F),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8,),
                            RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                    text: r"$200 - $500 USD",
                                    style: TextStyle(
                                      color: const Color(0xFF007EF2),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: GoogleFonts.roboto().fontFamily,
                                    )
                                ),
                                TextSpan(
                                    text: r"/night",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: GoogleFonts.roboto().fontFamily,
                                    )
                                ),
                              ],
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

      ],
          ),
        )
    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFF5FAFE),
        fixedColor:  const Color(0xFF007EF2),
        unselectedLabelStyle: TextStyle(
          color: const Color(0xFF7F7F7F),
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
        selectedLabelStyle: TextStyle(
          color: const Color(0xFF007EF2),
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
        unselectedItemColor: const Color(0xFF7F7F7F),
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home_icon.svg", width: 20, height: 20,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/like_icon.svg", width: 20, height: 20,),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/booking_icon.svg", width: 15, height: 15,),
            label: 'My bookings',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/chat_icon.svg", width: 17, height: 17,),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/person_icon.svg", width: 20, height: 20,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


void _showNotificationDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      double screenHeight = MediaQuery.of(context).size.height;

      return SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
            height: screenHeight * 0.9,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 26, left: 28, right: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Cancel",
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 12,
                         fontWeight: FontWeight.w500,
                         fontFamily: GoogleFonts.roboto().fontFamily,
                       ),
                       ),
                       Text("Filter",
                         style: TextStyle(
                           color: const Color(0xFF007EF2),
                           fontSize: 20,
                           fontWeight: FontWeight.w700,
                           fontFamily: GoogleFonts.roboto().fontFamily,
                         ),
                       ),
                       Text("Reset",
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                           fontWeight: FontWeight.w700,
                           fontFamily: GoogleFonts.roboto().fontFamily,
                         ),
                       ),
                     ],
                   ),
                    const SizedBox(height: 11,),
                    Text("Sort By",
                      style: TextStyle(
                      color: const Color(0xFF1E1E1E),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.openSans().fontFamily,
                    ),
                    ),
                    const SizedBox(height: 8,),
                    SizedBox(
                      width: 320,
                      height: 53,
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.arrow_drop_down_sharp, size: 15, color: Colors.black,),
                          labelText: r"$ - $$ Price Lower to Higher",
                          labelStyle: const TextStyle(
                            color: Color(0xFF777676),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Roboto',
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF007EF2),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 33,),
                     Text("Ratings",
                      style: TextStyle(
                        color: const Color(0xFF1E1E1E),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.openSans().fontFamily,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color:const Color(0xFF7F7F7F), width: 1),
                          ),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1",
                              style: TextStyle(
                                color: const Color(0xFF7F7F7F),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                              ),
                              ),
                              SvgPicture.asset("assets/icons/star.svg", width: 12, height: 12,),
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color:const Color(0xFF7F7F7F), width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("3",
                                style: TextStyle(
                                  color: const Color(0xFF7F7F7F),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              SvgPicture.asset("assets/icons/star.svg", width: 12, height: 12,),
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color:const Color(0xFF7F7F7F), width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("3",
                                style: TextStyle(
                                  color: const Color(0xFF7F7F7F),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              SvgPicture.asset("assets/icons/star.svg", width: 12, height: 12,),
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 44,
                          decoration: BoxDecoration(
                            color: const Color(0xFF007EF2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("4",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              SvgPicture.asset("assets/icons/star.svg", width: 12, height: 12,),
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color:const Color(0xFF7F7F7F), width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("5",
                                style: TextStyle(
                                  color: const Color(0xFF7F7F7F),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              SvgPicture.asset("assets/icons/star.svg", width: 12, height: 12,),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Text("Price Ranges",
                    style:  TextStyle(
                        color: const Color(0xFF1E1E1E),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: GoogleFonts.openSans().fontFamily,
              ),
                    ),
                    const RangeIt(),
                    const SizedBox(height: 4,),
                    Text(r"$90-$350",
                      style:  TextStyle(
                        color: const Color(0xFF1E1E1E),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.openSans().fontFamily,
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Text("'Facilities",
                      style:  TextStyle(
                        color: const Color(0xFF1E1E1E),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.openSans().fontFamily,
                      ),
                    ),
                    Center(
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HotelDetails()));
                      }, child: Container(
                        width: 298,
                        height: 41,
                        decoration: BoxDecoration(
                          color: const Color(0xFF007EF2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("APPLY",
                            style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 0.88),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.roboto().fontFamily
                            ),
                          ),
                        ),
                      ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

class RangeIt extends StatefulWidget {
  const RangeIt({super.key});

  @override
  State<RangeIt> createState() => _RangeItState();
}

class _RangeItState extends State<RangeIt> {
  RangeValues _currentRange = const RangeValues(25, 75);

  @override
  Widget build(BuildContext context) {
    return           RangeSlider(
      values: _currentRange,
      onChanged: (RangeValues newRange) {
        setState(() {
          _currentRange = newRange;
        });
      },
      min: 0,
      max: 100,
      labels: RangeLabels(
        _currentRange.start.round().toString(),
        _currentRange.end.round().toString(),
      ),
      divisions: 100,
      activeColor: const Color(0xFF007EF2),
      inactiveColor: const Color(0xFF7F7F7F),
    );
  }
}
