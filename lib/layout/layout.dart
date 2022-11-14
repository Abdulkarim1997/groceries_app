import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            preferredSize: Size.fromHeight(200.0), // here the desired height
            child: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: false,
              flexibleSpace: Column(mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/carrot28_32.png',
                      height: 50,
                      width: 50,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text('Dhaka, Banassre'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        onSubmitted: (txt) async {},
                        autofocus: false,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: grey,
                          ),
                          filled: true,
                          fillColor: heavenly,
                          hintText: "Search Store",
                          hintStyle: TextStyle(fontSize: 14.0, color: grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: white, width: 0.0),
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
            title: Text(
              'Salla2',
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
            title: Text(
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
