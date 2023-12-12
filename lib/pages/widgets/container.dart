import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerText extends StatelessWidget {
  const ContainerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149,
      height: 53,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(width: 1, color: const Color(0xFF7F7F7F)),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){}, child: SvgPicture.asset("assets/icons/minus.svg")),
            const Text("1",
            style: TextStyle(
              color: Color(0xFF7F7F7F),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            ),
            TextButton(onPressed: (){}, child: SvgPicture.asset("assets/icons/plus.svg")),
          ],
        ),
      ),
    );
  }
}
