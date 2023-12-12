import 'package:flutter/material.dart';

class FieldText extends StatelessWidget {
  final String label;
  final Icon icon;

  const FieldText({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: icon,
        labelStyle: const TextStyle(
          color: Color(0xFF7F7F7F),
          fontSize: 10,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto', // Replace with your desired font
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
    );
  }
}
