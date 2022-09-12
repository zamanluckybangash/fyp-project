import 'package:final_year_project/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 414.w,
            height: 380.h,
            color: Colors.white,
          ),
          Container(
            width: 414.w,
            height: 434.h,
            color: kGreyColor,
          ),
        ],
      ),
    );
  }
}

