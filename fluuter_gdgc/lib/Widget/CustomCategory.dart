import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../Theme/AppColors.dart';

class Customcategory extends StatelessWidget {
  final String Name_Category;
  const Customcategory({super.key, required this.Name_Category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 30.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29.r), color: Appcolors.blackC),
          child: Center(
            child: Text(Name_Category,style: TextStyle(color: Appcolors.whiteC,fontSize:14.sp,fontWeight: FontWeight.w500),),
          ),
    );
  }
}
