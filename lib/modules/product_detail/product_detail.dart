import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shard/styles/colors.dart';

class PoductDetail extends StatefulWidget {
  PoductDetail({Key? key}) : super(key: key);

  @override
  State<PoductDetail> createState() => _PoductDetailState();
}

class _PoductDetailState extends State<PoductDetail> {
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_outlined)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.upload_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              child: Container(
                // decoration: BoxDecoration(
                //   border: Border.all(color: cardBorder),
                // ),
                child: ImageSlideshow(
                  /// Width of the [ImageSlideshow].
                  width: double.infinity,

                  /// Height of the [ImageSlideshow].
                  height: 250.44.h,

                  /// The page to show when first creating the [ImageSlideshow].
                  initialPage: 0,

                  /// The color to paint the indicator.
                  indicatorColor: defaultColor,

                  /// The color to paint behind th indicator.
                  indicatorBackgroundColor: Colors.grey,

                  /// Called whenever the page in the center of the viewport changes.
                  onPageChanged: (value) {
                    print('Page changed: $value');
                  },

                  /// Auto scroll interval.
                  /// Do not auto scroll with null or 0.
                  autoPlayInterval: null,

                  /// Loops back to first slide.
                  isLoop: true,

                  /// The widgets to display in the [ImageSlideshow].
                  /// Add the sample image file into the images folder
                  children: [
                    Image.asset(
                      'assets/images/apple.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.5.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(21.95.w, 0, 25.1.w, 0),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Naturel Red Apple',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontFamily: 'Gilroy',
                            ),
                          ),
                          SizedBox(
                            height: 10.5.h,
                          ),
                          Text(
                            '1kg, Price',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: 'Gilroy',
                                color: grey),
                          ),
                          SizedBox(
                            height: 44.33.h,
                          ),
                          buildQuantityRow(),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: cardBorder,
                            size: 22.8.h,
                          ),
                          SizedBox(
                            height: 90.57.h,
                          ),
                          const Text(
                            '\$4.99',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Gilroy',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 19.04.h,
                  ),
                  const Divider(
                    color: dividerColor,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQuantityRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          buildQuantityDownButton(),
          SizedBox(
            width: 20.sp,
          ),
          Container(
              width: 45.67,
              height: 45.67,
              decoration: BoxDecoration(
                border: Border.all(color: cardBorder),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                  child: Text(
                _quantity.toString(),
                style: TextStyle(fontSize: 18, color: black),
              ))),
          SizedBox(
            width: 20.sp,
          ),
          buildQuantityUpButton()
        ],
      );

  buildQuantityDownButton() => SizedBox(
      width: 36,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.minus, size: 17.sp, color: black),
          onPressed: () {
            if (_quantity > 1) {
              _quantity--;
              setState(() {});
            }
          }));

  buildQuantityUpButton() => SizedBox(
        width: 36,
        child: IconButton(
            icon: Icon(
              FontAwesomeIcons.plus,
              size: 17.sp,
              color: defaultColor,
            ),
            onPressed: () {
              _quantity = _quantity + 1;
              setState(() {});
            }),
      );
}
