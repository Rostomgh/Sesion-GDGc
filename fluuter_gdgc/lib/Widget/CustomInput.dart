import 'package:flutter/material.dart';
import '../Theme/AppColors.dart';

class Custominput extends StatelessWidget {
  final String? hint;
  final bool obscure;
  final String Function(String?) valid;
  final TextEditingController controller;
  final TextInputType keyType;
  const Custominput(
      {super.key,
      required this.hint,
      required this.obscure,
      required this.valid,
      required this.controller, required this.keyType});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 343,
      decoration: const BoxDecoration(color: Appcolors.whiteC),
      child: TextFormField(
        keyboardType: keyType,
        obscureText: obscure,
        validator: valid,
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            hintText: hint,
            hintStyle: const TextStyle(color: Appcolors.hintC, fontSize: 11)),
      ),
    );
  }
}
