import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTimerScreen extends StatefulWidget {
  @override
  _MyTimerScreenState createState() => _MyTimerScreenState();
}

class _MyTimerScreenState extends State<MyTimerScreen> {
  late int secondsRemaining;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneMinute = Duration(minutes: 1);
    secondsRemaining = oneMinute.inSeconds;

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (secondsRemaining > 0) {
          secondsRemaining--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime =
        '${(secondsRemaining ~/ 60).toString().padLeft(2, '0')}:${(secondsRemaining % 60).toString().padLeft(2, '0')}';

    return Center(
        child: Text(
          formattedTime,
          style:  TextStyle(fontSize: 25,
          fontWeight: FontWeight.w700,
            color: Colors.black,
            fontFamily: GoogleFonts.openSans().fontFamily,
          ),
        ),
      );
  }
}