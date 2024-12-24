import 'package:flutter/material.dart';

import '../Theme/AppColors.dart';

class Custombutton extends StatelessWidget {
  final String titleB;
  final void Function()? onpress;
  const Custombutton({super.key, required this.titleB, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 343,
      child: MaterialButton(
        onPressed: onpress,
        color: Appcolors.buttonC,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Text(
          titleB,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Appcolors.whiteC),
        ),
      ),
    );
  }
}
