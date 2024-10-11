import 'package:flutter/material.dart';

class BannerModel{
  final double height;
  final Color backgroundColor;
  final String image;
  final String title;
  final String description;
  final TextStyle descriptionStyle;


  BannerModel({
    required this.height,
    required this.backgroundColor,
    required this.image,
    required this.title,
    required this.description,
    required this.descriptionStyle,
  });
}