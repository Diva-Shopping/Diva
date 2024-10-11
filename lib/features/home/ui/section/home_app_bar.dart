
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              child:
                  Image.asset("assets/images/user_home_avatar.png"),
            ),
            horizontalSpacing(10),
            Text(
              "Welcome, Dalida",
              style: TextStyles.font14Blackw400,
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset("assets/svg/home_notification.svg"),
            horizontalSpacing(15),
            const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ],
        )
      ],
    );
  }
}
