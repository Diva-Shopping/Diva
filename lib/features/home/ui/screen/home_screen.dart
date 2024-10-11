import 'package:diva/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import '../widget/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [verticalSpacing(20), const HomeAppBar()],
          ),
        ),
      ),
    );
  }
}
