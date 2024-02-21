// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet/constant/color_constant.dart';
import 'package:pet/constant/image_constant.dart';
import 'package:pet/constant/style_constant.dart';

class Widget1 extends StatelessWidget {
  const Widget1({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstant.borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: StyleConstant.textTitle,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(ImageConstant.imgRightArrow),
              Spacer(),
              SvgPicture.asset(imageUrl)
            ],
          )
        ],
      ),
    );
  }
}
