import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shard/components/components.dart';
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
                  Column(
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
                          const Spacer(),
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
                        height: 10.h,
                      ),
                      const Divider(
                        color: dividerColor,
                        thickness: 1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  'Product Detail',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'Gilroy',
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.keyboard_arrow_down_outlined,
                                      size: 30.0.sp),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Apples are nutritious. Apples may be good for weight loss.\napples may be good for your heart. As part of a healtful and varied diet.',
                        // maxLines: 3,

                        style: TextStyle(
                          color: grey,
                          fontSize: 13.sp,
                          fontFamily: 'Gilroy-Medium',
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const Divider(
                        color: dividerColor,
                        thickness: 1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Nutritions',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Gilroy',
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 33.61.h,
                        height: 18.w,
                        decoration: BoxDecoration(
                          color: lightGrey,
                          border: Border.all(color: cardBorder),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Center(
                          child: Text(
                            '100gr',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9.sp,
                              fontFamily: 'Gilroy',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.6.w,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_right_outlined,
                            size: 30.0.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Divider(
                    color: dividerColor,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Text(
                        'Review',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Gilroy',
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(),
                        child: RatingBar.builder(
                          itemSize: 20.0,
                          //TODO التقييمات في حال الشراء فقط لازم API
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          glowColor: Colors.amber,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) {
                            return Icon(FontAwesomeIcons.star,
                                color: Colors.amber);
                          },
                          onRatingUpdate: (rating) async {},
                        ),
                      ),
                      SizedBox(
                        width: 20.6.w,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_right_outlined,
                            size: 30.0.sp),
                      ),
                      SizedBox(
                        height: 19.04.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 23.14.h,
                  ),
                  defaultButton(
                      context: context,
                      name: 'Add To Basket',
                      function: () {},
                      radius: 19.r),
                  SizedBox(
                    height: 38.67.h,
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
