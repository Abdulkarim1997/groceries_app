import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../modules/search/search_screen.dart';
import '../shard/components/components.dart';
import '../shard/styles/colors.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GroceriesCubit, GroceriesStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = GroceriesCubit.get(context);
        return Scaffold(
          appBar: buildAppBar(cubit, context),
          body: cubit.bottomScreen[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              cubit.changeBottom(index);
            },
            currentIndex: cubit.currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp),
                //     SvgPicture.asset(
                //   color: black,
                //   'assets/images/home.svg',
                //   width: 25,
                //   height: 25,
                // ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                //     SvgPicture.asset(
                //   color: black,
                //   'assets/images/home.svg',
                //   width: 25,
                //   height: 25,
                // ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart  ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites  ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Account  ',
              ),
            ],
          ),
        );
      },
    );
  }

  PreferredSizeWidget? buildAppBar(
    GroceriesCubit cubit,
    BuildContext context,
  ) {
    int index = cubit.currentIndex;
    switch (index) {
      case 0:
        {
          return PreferredSize(
            preferredSize: Size.fromHeight(200.0.h), // here the desired height
            child: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: false,
              flexibleSpace: Column(mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 58.h,
                    ),
                    Image.asset(
                      'assets/images/carrot28_32.png',
                      height: 50.h,
                      width: 50.w,
                    ),
                    SizedBox(
                      height: 3.8.h,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.location_on_outlined),
                        Text('Dhaka, Banassre'),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: TextField(
                        textAlign: TextAlign.start,
                        onSubmitted: (txt) async {},
                        autofocus: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: grey,
                          ),
                          filled: true,
                          fillColor: heavenly,
                          hintText: "Search Store",
                          hintStyle: TextStyle(fontSize: 14.0.sp, color: grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0.r)),
                            borderSide: BorderSide(
                              color: white,
                            ),
                          ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: golden, width: 0.0),
                          // ),
                        ),
                      ),
                    )
                  ]),
            ),
          );
        }
        break;
      case 1:
        {
          return AppBar(
            title: const Text(
              'Sally2',
            ),
            actions: [
              IconButton(
                onPressed: () {
                  navigateTo(context, SearchScreen());
                },
                icon: Icon(Icons.search),
              ),
            ],
          );
        }
        break;
      case 2:
        {
          return AppBar(
            title: const Text(
              'Salla3',
            ),
            actions: [
              IconButton(
                onPressed: () {
                  navigateTo(context, SearchScreen());
                },
                icon: Icon(Icons.search),
              ),
            ],
          );
        }
        break;
      case 3:
        {
          return AppBar(
            title: Text(
              'Salla4',
            ),
            actions: [
              IconButton(
                onPressed: () {
                  navigateTo(context, SearchScreen());
                },
                icon: Icon(Icons.search),
              ),
            ],
          );
        }
        break;
      case 4:
        {
          return AppBar(
            title: Text(
              'Salla5',
            ),
            actions: [
              IconButton(
                onPressed: () {
                  navigateTo(context, SearchScreen());
                },
                icon: Icon(Icons.search),
              ),
            ],
          );
        }
        break;
    }
  }
}
