import 'package:diva/core/helpers/constants.dart';
import 'package:diva/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import '../section/home_app_bar.dart';
import '../section/search_and_filter.dart';
import '../widget/banner_container.dart';

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
              SizedBox(
                height: 127,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: Constants.banners.length,
                    separatorBuilder: (context, index) {
                      return horizontalSpacing(15);
                    },
                    itemBuilder: (context, index) {
                      return BannerContainer(
                        index: index,
                        bannerModel: Constants.banners[index],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
