import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../shard/styles/colors.dart';

class PoductDetail extends StatefulWidget {
  const PoductDetail({Key? key}) : super(key: key);

  @override
  State<PoductDetail> createState() => _PoductDetailState();
}

class _PoductDetailState extends State<PoductDetail> {
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
            ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 371.44,

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
                  width: 50.34,
                  height: 50.18,
                  'assets/images/apple.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/apple.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/apple.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Naturel Red Apple',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Gilroy-Bold',
                      ),
                    ),
                    Text(
                      '1kg, Price',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Gilro',
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
