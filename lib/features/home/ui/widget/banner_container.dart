import 'package:flutter/material.dart';

import '../../logic/model/banner_model.dart';

class BannerContainer extends StatelessWidget {
  final int index;
  final BannerModel bannerModel;

  const BannerContainer({
    super.key,
    required this.bannerModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: bannerModel.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 96,
        width: 224,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              bannerModel.title,
              height: 60,
            ),
            Expanded(
                child: Text(bannerModel.description,
                    maxLines: 2, style: bannerModel.descriptionStyle)),
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        left: index == 0 ? 0 : -25,
        width: 135,
        height: bannerModel.height,
        child: ClipRRect(
          borderRadius: index == 0
              ? BorderRadius.zero
              : const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
          child: Image.asset(
            bannerModel.image,
          ),
        ),
      )
    ]);
  }
}
