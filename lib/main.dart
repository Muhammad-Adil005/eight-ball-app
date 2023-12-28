/*
import 'package:eight_ball_app/provider_app/luck_provider.dart';
import 'package:eight_ball_app/provider_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const EightBallApp());
}

class EightBallApp extends StatelessWidget {
  const EightBallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return ChangeNotifierProvider(
          create: (context) => LuckProvider(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Eight Ball App using Provider and Bloc',
            // You can use the library anywhere in the app even in theme
            // theme: ThemeData(
            //   primarySwatch: Colors.blue,
            //   textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            // ),
            home: SplashScreen(),
          ),
        );
      },
    );
  }
}
*/
import 'package:eight_ball_app/provider_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc_app/luck_bloc.dart'; // Ensure the path is correct

void main() {
  runApp(const EightBallApp());
}

class EightBallApp extends StatelessWidget {
  const EightBallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider(
          create: (context) => LuckBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Eight Ball App using Bloc',
            home:
                SplashScreen(), // Make sure SplashScreen is compatible with BLoC
          ),
        );
      },
    );
  }
}
