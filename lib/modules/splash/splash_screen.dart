import 'package:flutter/material.dart';

import '../../shard/styles/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultColor,
        body: Center(child: Image.asset('assets/images/nectar.png')));
  }
}
