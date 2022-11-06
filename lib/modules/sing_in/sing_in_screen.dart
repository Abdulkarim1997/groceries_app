import 'package:flutter/material.dart';

import '../../shard/styles/colors.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    print(widthScreen * 222 / 411.428);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/images/flower.png'),
                Positioned(
                    left: widthScreen * 300 / 411.428,
                    top: heightScreen * 7.13 / 797.714,
                    child: Image.asset('assets/images/logo.png')),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.53),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: widthScreen * 240 / 411.428,
                    height: heightScreen * 80 / 797.714,
                    child: Text(
                      "Get your groceries \n with nectar",
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 26,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefix: Icon(
                        Icons.flag,
                        color: Colors.green,
                      ),
                      // SvgPicture.asset('assets/images/Rectangle11.svg',)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(
                        start: widthScreen * 20.53 / 411.428,
                        top: 0,
                        bottom: 0,
                        end: 0),
                    width: widthScreen * 340 / 411.428,
                    height: heightScreen * 20 / 797.714,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Or connect with social media",
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: heightScreen * 67 / 797.714,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(colorBlue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.0),
                          ))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                end: 30, bottom: 0, top: 0, start: 30),
                            child: Image.asset('assets/images/google.png',
                                height: 24, width: 22),
                          ),
                          Text(
                            'Continue with Google',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: heightScreen * 67 / 797.714,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(colorBlueBold),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.0),
                          ))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                end: 30, bottom: 0, top: 0, start: 30),
                            child: Image.asset('assets/images/facebook.png',
                                height: 24, width: 22),
                          ),
                          Text(
                            'Continue with Facebook',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
