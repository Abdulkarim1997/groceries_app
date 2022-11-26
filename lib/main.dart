import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/shard/bloc_observer.dart';
import 'package:groceries_app/shard/styles/themes.dart';

import 'layout/cubit/cubit.dart';
import 'modules/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
    () async {
      // Use blocs...
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GroceriesCubit>(create: (context) => GroceriesCubit()),
      ],
      //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
