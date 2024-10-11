
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: "Search here",
          hintStyle: TextStyles.font14Blackw400.copyWith(
            color: Colors.black.withOpacity(.3),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: ColorsManagers.primaryColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                BorderSide(color: Colors.black.withOpacity(.3)),
          ),
        ),
      ),
    );
  }
}
