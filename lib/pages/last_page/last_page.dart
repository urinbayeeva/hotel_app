import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/pages/home_page/find_page/find_page_view.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> with TickerProviderStateMixin{
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );

    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _slideAnimation = Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
        .animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeInOut,
    ));

    // Start animations
    _fadeController.forward();
    _slideController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FAFE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Spacer(),
          FadeTransition( opacity: _fadeAnimation,child: Image.asset("assets/images/final.png",)),
          const SizedBox(height: 48,),
          Text("Congratulations!!",
          style: TextStyle(
            color: const Color(0xFF007EF2),
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: GoogleFonts.openSans().fontFamily,
          ),
          ),
          const SizedBox(height: 7,),
          Text("Your hotel stay is secured\nCounting down to your\ndream vacation!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF777676),
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: GoogleFonts.openSans().fontFamily,
            ),
          ),
          const Spacer(),
          Center(
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FindPage()));
            }, child: Container(
              width: 250,
              height: 46,
              decoration: BoxDecoration(
                color: const Color(0xFF007EF2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("GO HOME",
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
          const SizedBox(height: 14,),
          const Text("VIEW E-RECIEPT",
          style: TextStyle(
            color: Color(0xFFFFD700),
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor:  Color(0xFFFFD700),
          ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
