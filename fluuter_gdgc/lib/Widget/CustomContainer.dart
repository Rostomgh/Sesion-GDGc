import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Theme/Assets.dart';
import '../Theme/AppColors.dart';

class CustomContainer extends StatefulWidget {
  final String Firs_N;
  final String Cloth;
  final String price;
  final String Color_C;
  final String image;
  const CustomContainer(
      {super.key,
      required this.Firs_N,
      required this.Cloth,
      required this.price,
      required this.Color_C, required this.image});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 104.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        // color: Appcolors.whiteC,
      ),
      child: Row(
        children: [
          Image.asset(
            widget.image,
            width: 100.w,
            height: 100.h,
          ),
          SizedBox(width: 3.w),
          Column(
            children: [
              Text(
                widget.Firs_N,
                style: const TextStyle(
                  color: Appcolors.hintC,
                  fontSize: 11,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                widget.Cloth,
                style: const TextStyle(
                  color: Appcolors.blackC,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Color:${widget.Color_C}',
                style: const TextStyle(
                  color: Appcolors.hintC,
                  fontSize: 11,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Row(children: [
                Text(
                  '${widget.price}\$',
                  style: const TextStyle(
                    color: Appcolors.blackC,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                AnimatedRatingStars(
                  initialRating: 1,
                  minRating: 0.0,
                  maxRating: 5.0,
                  filledColor: Colors.amber,
                  emptyColor: Colors.grey,
                  filledIcon: Icons.star,
                  halfFilledIcon: Icons.star_half,
                  emptyIcon: Icons.star_border,
                  onChanged: (double rating) {},
                  displayRatingValue: true,
                  interactiveTooltips: true,
                  customFilledIcon: Icons.star,
                  customHalfFilledIcon: Icons.star_half,
                  customEmptyIcon: Icons.star_border,
                  starSize: 14.0,
                  animationDuration: const Duration(milliseconds: 100),
                  animationCurve: Curves.easeInOut,
                  readOnly: false,
                )
              ]),
            ],
          )
        ],
      ),
    );
  }
}
