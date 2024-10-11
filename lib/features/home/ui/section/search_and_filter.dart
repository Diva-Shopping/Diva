
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../widget/search_text_field.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SearchTextField(),
        horizontalSpacing(14),
        CircleAvatar(
          radius: 25,
          backgroundColor: ColorsManagers.lightPrimaryColor,
          child: SvgPicture.asset("assets/svg/home_filter.svg"),
        )
      ],
    );
  }
}
