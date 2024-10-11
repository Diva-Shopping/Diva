import 'package:diva/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../features/home/logic/model/banner_model.dart';
import '../theming/styles.dart';

class Constants {
  static List<BannerModel> banners = [
    BannerModel(
        height: 127,
        backgroundColor: Colors.yellow,
        image: "assets/images/first_woman_home_banner.png",
        title: "assets/images/free_delivery_home_banner.png",
        description: "On orders over 2000 L.E",
        descriptionStyle: TextStyles.font10DarkGreyw400Roboto),
    BannerModel(
        height: 110,
        backgroundColor: ColorsManagers.purpleHomeBannerColor,
        image: "assets/images/second_woman_home_banner.png",
        title: "assets/images/special_offer_home_banner.png",
        description: "Up to 70% on selected items",
        descriptionStyle: TextStyles.font10Whitew400Roboto),
  ];
}
