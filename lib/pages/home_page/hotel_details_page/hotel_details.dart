

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/home_page/booking_page/booking_page_view.dart';
import 'package:hotel_booking/pages/home_page/filter_page/filtering_pages.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  Color myBlueColor = const Color.fromRGBO(0, 126, 242, 0.12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
       title: Padding(
         padding: const EdgeInsets.only(left: 0, right: 0),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const FilteringPages()));
               }
               ,
                 child: SvgPicture.asset("assets/icons/back.svg",),
             ),
             Text("      Hotel Details",
             style: TextStyle(
               color: const Color(0xFF007EF2),
               fontSize: 20,
               fontWeight: FontWeight.bold,
               fontFamily: GoogleFonts.openSans().fontFamily,
             ),
             ),
             Row(
               children: [
                 SvgPicture.asset("assets/icons/share.svg"),
                 const SizedBox(width: 11,),
                 SvgPicture.asset("assets/icons/appbar_icon.svg"),
               ],
             )
           ],
         ),
       ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 610,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width:  MediaQuery.of(context).size.width,
                      child: Image.asset("assets/images/big.jpg",)),
                  const SizedBox(height: 32,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("AYANA Resort",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                        ),
                        CircleAvatar(
                          radius: 17.5,
                          backgroundColor: const Color(0xFF007EF2),
                          child: SvgPicture.asset("assets/icons/navigate.svg"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 11,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 32,
                          decoration: BoxDecoration(
                              color: myBlueColor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(
                              "10% OFF",
                              style: TextStyle(
                                color: const Color(0xFF007EF2),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.openSans().fontFamily,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 19,),
                        Container(
                          width: 143,
                          height: 32,
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
                                  "4.5 (120 Reviews)",
                                  style: TextStyle(
                                    color: const Color(0xFF007EF2),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: GoogleFonts.openSans().fontFamily,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14,),
                  Padding(padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on_outlined,
                        size: 10,
                        color: Colors.grey,
                        ),
                        const SizedBox(width: 5,),
                        Text("Karang Mas Estate, Jimbaran, Bali, Indonesia",
                        style: TextStyle(
                          color: const Color(0xFF7F7F7F),
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 26,),
                  Padding(padding: const EdgeInsets.only(left: 15),
                    child:
                        Text("Description",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                        )
                  ),
                  const SizedBox(height: 12,),
                  Padding(padding: const EdgeInsets.only(left: 15),
                      child:
                      Text("Nestled in the lush tropical paradise of Jimbaran, Bali, AYANA Resort and Spa offers an enchanting escape for travelers seeking luxury, relaxation, and breathtaking ocean views...Read more",
                        style: TextStyle(
                          color: const Color(0xFF7F7F7F),
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      )
                  ),
                  const SizedBox(height: 16,),
                  Padding(padding: const EdgeInsets.only(left: 15),
                      child:
                      Text("Contact Info",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      )
                  ),
                      const SizedBox(height: 16,),
                  Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 17.5,
                            backgroundColor: const Color.fromRGBO(0, 126, 242, 0.41),
                            child: Center(
                              child: SvgPicture.asset("assets/icons/person_container.svg"),
                            ),
                          ),
                          const SizedBox(width: 11,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("John Mail",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              const SizedBox(height: 1,),
                              Text("John Mail",
                                style: TextStyle(
                                  color: const Color(0xFF7F7F7F),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                            ],
                          ),
                     const SizedBox(width: 170,),
                     CircleAvatar(
                       radius: 17.5,
                       backgroundColor: const Color(0xFF007EF2),
                       child: Center(
                         child: SvgPicture.asset("assets/icons/call_container.svg"),
                       ),
                     ),
                     const SizedBox(width: 10,),
                     CircleAvatar(
                       radius: 17.5,
                       backgroundColor: const Color(0xFF007EF2),
                       child: Center(
                         child: SvgPicture.asset("assets/icons/message_container.svg"),
                       ),
                     )
                        ],
                      ),
                  ),
                  const SizedBox(height: 28,),
                  Padding(padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Gallery",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 16,
                       fontWeight: FontWeight.w700,
                       fontFamily: GoogleFonts.roboto().fontFamily,
                     ),
                  ),
                  )
              ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21, top: 22, right: 32),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              RichText(text: TextSpan(
              children: [
                  TextSpan(
                  text: r"$350 USD",
                  style: TextStyle(
                    color: const Color(0xFF007EF2),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  )
              ),
              TextSpan(
                  text: "/\nnight",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  )
              ),
              ],
            ),
              ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BokkingPage()));
                  }, child: Container(
                    width: 167,
                    height: 46,
                    decoration: BoxDecoration(
                      color: const Color(0xFF007EF2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("BOOK NOW",
                      style: TextStyle(
                        color: const Color.fromRGBO(255, 255, 255, 0.88),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.roboto().fontFamily
                      ),
                      ),
                    ),
                  ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
