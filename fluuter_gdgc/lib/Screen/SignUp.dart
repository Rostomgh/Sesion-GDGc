import 'package:flutter/material.dart';
import 'package:fluuter_gdgc/Widget/CustomButton.dart';
import 'package:fluuter_gdgc/Widget/CustomInput.dart';

import '../Theme/Assets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            const FText(),
            const SizedBox(height: 73),
            Custominput(
              keyType: TextInputType.name,
              obscure: false,
              hint: 'Name',
              controller: nameController,
              valid: (p0) {
                if (p0!.isEmpty) {
                  return 'Enter your name';
                }
                return "null";
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Custominput(
              keyType: TextInputType.name,
              obscure: false,
              hint: 'Name',
              controller: nameController,
              valid: (p0) {
                if (p0!.isEmpty) {
                  return 'Enter your name';
                }
                return "null";
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Custominput(
              keyType: TextInputType.name,
              obscure: false,
              hint: 'Name',
              controller: nameController,
              valid: (p0) {
                if (p0!.isEmpty) {
                  return 'Enter your name';
                }
                return "null";
              },
            ),
            const SizedBox(height: 40),
            Custombutton(
              onpress: () {
                Navigator.pushNamed(context, '/favorite');
              },
              titleB: 'Sign Up',
            ),
            const SizedBox(height: 70),
            const Text('Or sign....'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Assets.gmail),
                const SizedBox(width: 40),
                Image.asset(Assets.gmail),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FText extends StatelessWidget {
  const FText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign up',
      style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
    );
  }
}
