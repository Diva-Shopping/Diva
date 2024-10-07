
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIconsButton extends StatelessWidget {
  const AppIconsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
               SvgPicture.asset('assets/facebook.svg'),
               SvgPicture.asset('assets/google.svg'),
               SvgPicture.asset('assets/apple.svg'),
               ],
             ),
    );
  }
}

