import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/last_page/last_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

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
            const SizedBox(width: 120,),
            Text("Payment",
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
      body:  Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Container(
           width: double.infinity,
           height: 134,
           color: const Color.fromRGBO(0, 126, 242, 0.12),
           child: Padding(
             padding: const EdgeInsets.only(top: 12, bottom: 10),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
             Text("Total Price",
             style: TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontWeight: FontWeight.w400,
               fontFamily: GoogleFonts.openSans().fontFamily,
             ),
             ),
                 const SizedBox(height: 4,),
                 Text(r"$750.00",
                   style: TextStyle(
                     color: const Color(0xFF007EF2),
                     fontSize: 36,
                     fontWeight: FontWeight.bold,
                     fontFamily: GoogleFonts.openSans().fontFamily,
                   ),
                 ),
                 const SizedBox(height: 4,),
                 Text("5% vst included",
                   style: TextStyle(
                     color: const Color(0xFF777676),
                     fontSize: 15,
                     fontWeight: FontWeight.w400,
                     fontFamily: GoogleFonts.openSans().fontFamily,
                   ),
                 ),
               ],
             ),
           ),
         ),
            const SizedBox(height: 30,),
            Center(child: Text(
              "Payment method",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.openSans().fontFamily,
              ),
            ),),
            const SizedBox(height: 10,),
            Image.asset("assets/images/cards.png", width: double.infinity, height: 70,),
            const SizedBox(height: 13,),
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Text("Card Holder Name",
                style: TextStyle(
                  color: const Color(0xFF777676),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoogleFonts.openSans().fontFamily,
                ),
              ),
            ),
           const SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: SizedBox(
                width: 320,
                height: 53,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Your Name",
                    labelStyle: const TextStyle(
                      color: Color(0xFF777676),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
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
            ),
            const SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Text("Card Number",
                style: TextStyle(
                  color: const Color(0xFF777676),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoogleFonts.openSans().fontFamily,
                ),
              ),
            ),
            const SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: SizedBox(
                width: 320,
                height: 53,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "**** **** ****",
                    labelStyle: const TextStyle(
                      color: Color(0xFF777676),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
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
            ),
            const SizedBox(height: 17,),
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 180 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Expiry date",
                    style: TextStyle(
                      color: const Color(0xFF777676),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.openSans().fontFamily,
                    ),
                  ),
                  Text("CVV",
                    style: TextStyle(
                      color: const Color(0xFF777676),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.openSans().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  SizedBox(
                    width: 135,
                    height: 53,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "MM/YY",
                        labelStyle: const TextStyle(
                          color: Color(0xFF777676),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
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
                  const SizedBox(width: 22,),
                  SizedBox(
                    width: 135,
                    height: 53,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "****",
                        labelStyle: const TextStyle(
                          color: Color(0xFF777676),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
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
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LastPage()));
              }, child: Container(
                width: 299,
                height: 46,
                decoration: BoxDecoration(
                  color: const Color(0xFF007EF2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("PAY NOW",
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
    );
  }
}
