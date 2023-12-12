import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/widgets/code_text_field.dart';
import 'package:hotel_booking/pages/widgets/container.dart';
import 'package:hotel_booking/pages/widgets/day_textfield.dart';
import 'package:hotel_booking/pages/widgets/text_field.dart';

import '../recommending_page/recommend_view.dart';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {

  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 783,
              child: Stack(
               children: [
                 Image.asset("assets/images/background.png"),
                 Positioned(
                   top: 215,
                     child: Container(
                   width: 400,
                   height: 704,
                   decoration: const BoxDecoration(
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                     color: Colors.white
                   ),
                       child:  Padding(
                         padding: const EdgeInsets.only(left: 20, top: 25),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                              Text("Welcome to your next\nAdventure!",
                               style: TextStyle(
                                 color: const Color(0xFF007EF2),
                                 fontSize: 25,
                                 fontWeight: FontWeight.bold,
                                 fontFamily: GoogleFonts.openSans().fontFamily
                               ),
                             ),
                             const SizedBox(height: 10,),
                              Text("Discover the Perfect Stay with WanderStay",
                               style: TextStyle(
                                 color: const Color(0xFFFFD700),
                                 fontSize: 12,
                                 fontWeight: FontWeight.w700,
                                   fontFamily: GoogleFonts.roboto().fontFamily
                               ),
                             ),
                             const SizedBox(height: 30,),
                              Text("Where?",
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 15,
                                 fontWeight: FontWeight.w700,
                                   fontFamily: GoogleFonts.roboto().fontFamily
                               ),
                             ),
                             const SizedBox(height: 8,),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: FieldText(label: "Ex: New York", icon: Icon(Icons.location_on_outlined)),
                          ),
                             const SizedBox(height: 31,),
                             Padding(
                               padding: const EdgeInsets.only(right: 124, left: 12),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("Check-in",
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 15,
                                       fontWeight: FontWeight.w700,
                                       fontFamily: GoogleFonts.roboto().fontFamily,
                                     ),
                                   ),
                                   Text("Check-out",
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 15,
                                       fontWeight: FontWeight.w700,
                                       fontFamily: GoogleFonts.roboto().fontFamily,
                                     ),
                                   ),
                                 ]
                               ),
                             ),
                             const SizedBox(height: 8,),
                             const Padding(
                               padding: EdgeInsets.only(right: 20, left: 12),
                               child: Row(
                                 children: [
                               DayTextField(data: "DD/MM/YY", icon: Icon(Icons.calendar_month_sharp)),
                                   SizedBox(width: 21,),
                                   DayTextField(data: "DD/MM/YY", icon: Icon(Icons.calendar_month_sharp)),
                                 ],
                               ),
                             ),
                            const  SizedBox(height: 28,),
                             Padding(
                               padding: const EdgeInsets.only(right: 154, left: 12),
                               child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text("Guests",
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 15,
                                         fontWeight: FontWeight.w700,
                                         fontFamily: GoogleFonts.roboto().fontFamily,
                                       ),
                                     ),
                                     Text("Room",
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 15,
                                         fontWeight: FontWeight.w700,
                                         fontFamily: GoogleFonts.roboto().fontFamily,
                                       ),
                                     ),
                                   ]
                               ),
                             ),
                             const SizedBox(height: 8,),
                             const Padding(
                               padding: EdgeInsets.only(right: 20, left: 12),
                               child: Row(
                                 children: [
                                 ContainerText(),
                                   SizedBox(width: 21,),
                                   ContainerText(),
                                 ],
                               ),
                             ),
                             const SizedBox(height: 30,),
                             Padding(
                               padding: const EdgeInsets.only(left: 19, right: 21),
                               child: Container(
                                 width: 320,
                                 height: 41,
                                 decoration: BoxDecoration(
                                   color: const Color(0xFF007EF2),
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: TextButton(
                                   onPressed: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => const RecommendPage()));
                                   },
                                   child: Center(
                                     child: Text("FIND",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 18,
                                       fontWeight: FontWeight.w600,
                                       fontFamily: GoogleFonts.roboto().fontFamily,
                                     ),
                                     ),
                                   ),
                                 ),
                               ),
                             )
                           ],
                         ),
                       ),
                 ),
                 ),
               ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor:  const Color(0xFF007EF2),
        unselectedLabelStyle: TextStyle(
          color: const Color(0xFF007EF2),
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
        unselectedItemColor: const Color(0xFF007EF2),
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
