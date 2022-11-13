import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries_app/layout/cubit/states.dart';

import '../../models/home_model.dart';
import '../../modules/account/account_screen.dart';
import '../../modules/cart/cart_screen.dart';
import '../../modules/explore/explore_screen.dart';
import '../../modules/favourite/favourite_screen.dart';
import '../../modules/home/home_screen.dart';

class GroceriesCubit extends Cubit<GroceriesStates> {
  GroceriesCubit() : super(GroceriesInitialState());
  static GroceriesCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottomScreen = [
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    const AccountScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(GroceriesChangeBottomNavState());
  }

  HomeModel? homeModel;
  /* void getHomeData() {
    print("token: $token");
    emit(ShopLoadingHomeDataState());
    DioHelper.getData(
      path: HOME,
      token: token ?? '',
    ).then((value) {
      print('object');
      if (value?.statusCode == 200) print('Dio with statusCode 200');
      homeModel = HomeModel.fromJson(value?.data);
      emit(ShopSuccessHomeDataState());
    }).catchError((error) {
      print("Error:" + error.toString());
      emit(ShopErrorHomeDataState());
    });
  }

  CategoriesModel? categoriesModel;
  void getCategories() {
    print("token: $token");

    DioHelper.getData(
      path: GET_categories,
      token: token ?? '',
    ).then((value) {
      print('object');
      if (value?.statusCode == 200) print('Dio with statusCode 200');
      categoriesModel = CategoriesModel.fromJson(value?.data);
      emit(ShopSuccessCategoriesDataState());
    }).catchError((error) {
      print("Error:" + error.toString());
      emit(ShopErrorCategoriesDataState());
    });
  }

  */
}
