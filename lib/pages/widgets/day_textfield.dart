import 'package:flutter/material.dart';

class DayTextField extends StatelessWidget {
  const DayTextField({Key? key, required this.data, required this.icon})
      : super(key: key);

  final String data;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 149,
      height: 53,
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          label: Text(data),
          suffixIcon: icon,
          labelStyle: const TextStyle(
            color: Color(0xFF7F7F7F),
            fontSize: 10,
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
    );
  }
}
