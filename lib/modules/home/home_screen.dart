import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/shard/components/components.dart';

import '../../shard/styles/colors.dart';
import '../product_detail/product_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/images/slider1.png',
                ),
              ],
              options: CarouselOptions(
                  height: 160.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 1.0),
            ),
            Row(
              children: [
                Text(
                  'Exclusive Offer',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 269.5,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => buildShopCardItem(context),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                  itemCount: 5),
            ),
            const SizedBox(
              height: 51.5,
            ),
            Row(
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 269.5,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => buildShopCardItem(context),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                  itemCount: 5),
            ),
            const SizedBox(
              height: 51.5,
            ),
            Row(
              children: [
                Text(
                  'Groceries',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 105.5,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => buildShopGroceriesCardItem(),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                  itemCount: 5),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              height: 269.5,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => buildShopCardItem(context),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                  itemCount: 5),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildShopCardItem(BuildContext context) => GestureDetector(
        onTap: () => navigateTo(context, PoductDetail()),
        child: Card(
          // margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: cardBorder),
            borderRadius: BorderRadius.circular(18),
            //set border radius more than 50% of height and width to make circle
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/banana.png',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25.26,
                    ),
                    Text(
                      'Organic Bananas',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '7pcs, Priceg',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Gilroy-Medium',
                          color: grey),
                    ),
                    const SizedBox(
                      height: 20.16,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$4.99',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 46.52,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), //<-- SEE HERE
                            padding: EdgeInsets.all(17),
                          ),
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildShopGroceriesCardItem() => SizedBox(
        width: 248.19,
        child: Card(
          color: cardColor,
          child: Padding(
            padding: const EdgeInsets.all(17.3),
            child: Row(
              children: [
                Image.asset('assets/images/Pulses.png'),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Pulses',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      );
}
