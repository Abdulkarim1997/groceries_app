import 'package:flutter/material.dart';

import '../../shard/components/components.dart';
import '../../shard/styles/colors.dart';
import '../on_boarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultColor,
        body: Center(child: Image.asset('assets/images/nectar.png')));
  }

  void _navigateToHome() async {
    await Future.delayed(
      const Duration(milliseconds: 3000),
      () => navigateAndReplace(context, const onBoardingScreen()),
    );
  }
}
