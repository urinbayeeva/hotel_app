import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/home_page/payment/payment_page.dart';

class BokkingPage extends StatefulWidget {
  const BokkingPage({super.key});

  @override
  State<BokkingPage> createState() => _BokkingPageState();
}

class _BokkingPageState extends State<BokkingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FAFE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5FAFE),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SvgPicture.asset("assets/icons/back.svg"),
            const SizedBox(width: 77,),
            Text("Booking Summary",
              style: TextStyle(
                color: const Color(0xFF007EF2),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.openSans().fontFamily,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Row(
                children: [
                  Image.asset("assets/images/booking.png", width: 115, height: 78,),
                  const SizedBox(width: 17),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("AYANA Resort",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                      const SizedBox(height: 7,),
                      Text("Bali, Indonesia",
                        style: TextStyle(
                          color: const Color(0xFF7F7F7F),
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                      const SizedBox(height: 7,),
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: r"$350 USD",
                            style: TextStyle(
                          color: const Color(0xFF007EF2),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                          ),
                          TextSpan(
                            text: r"/night",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                            ),
                          ),
                        ]
                      ))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 45,),
            Padding(
              padding: const EdgeInsets.only(left: 26,right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Booking Date",
                    style: TextStyle(
                      color: const Color(0xFF252424),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text("1-Oct-2023",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Check-in",
                    style: TextStyle(
                      color: const Color(0xFF252424),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text("24-Oct-2023",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Check-out",
                    style: TextStyle(
                      color: const Color(0xFF252424),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text("26-Oct-2023",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Guests",
                    style: TextStyle(
                      color: const Color(0xFF252424),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text("3",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Room(s)",
                    style: TextStyle(
                      color: const Color(0xFF252424),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text("1",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            const SizedBox(
              width: double.infinity,
              child: Divider(
                color: Color(0xFFA99B9B),
              ),
            ),
            const SizedBox(height: 31,),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Amount",
                    style: TextStyle(
                      color: const Color(0xFF252424),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text(r"$350 x 2",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tax",
                    style: TextStyle(
                      color: const Color(0xFF252424),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text(r"$30",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total",
                    style: TextStyle(
                      color: const Color(0xFF252424),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text(r"$730",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
      const Spacer(),
      TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentPage()));
      }, child: Container(
        width: 299,
        height: 46,
        decoration: BoxDecoration(
          color: const Color(0xFF007EF2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text("CONTINUE TO PAYMENT",
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
