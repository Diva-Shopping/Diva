import 'package:diva/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import '../section/home_app_bar.dart';
import '../section/search_and_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              verticalSpacing(20),
              const HomeAppBar(),
              verticalSpacing(16),
              const SearchAndFilter(),
            ],
          ),
        ),
      ),
    );
  }
}
