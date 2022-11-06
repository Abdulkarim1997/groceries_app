import 'package:flutter/material.dart';

import '../../shard/styles/colors.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/man.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            right: 44.15,
            left: 44.15,
            top: 54.16,
            bottom: 39.55,
            child: Image.asset(
              'assets/images/carrot.png',
            ),
          ),
          const Positioned(
              width: 253,
              height: 100,
              top: 450,
              left: 80.5,
              child: Text(
                'Welcome\n to our store',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: Colors.white,
                ),
              )),
          const Positioned(
              width: 295,
              height: 16,
              top: 555.28,
              left: 59.5,
              child: Text(
                'Ger your groceries in as fast as one hour',
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Gilroy-Medium',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              )),
          Positioned(
              width: 353,
              height: 67,
              top: 630.28,
              left: 30.5,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(defaultColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ))),
                onPressed: () {},
                child: Text('Get Started'),
              ))
        ],
      ),
    );
  }
}
