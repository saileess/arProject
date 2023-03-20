import 'package:flutter/material.dart';
import 'package:major_project/domain/constants/string_constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          TextButton(onPressed: (){}, child: const Text(OnboardingConstants.skip, ))
        ],
      ),
    );
  }
}