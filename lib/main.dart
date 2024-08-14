import 'package:baskball/page/home.dart';
import 'package:baskball/page/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // all screen now can access provider
    // can be used in ui
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter',
        initialRoute: SplashScreen.routName,
        routes: {
          SplashScreen.routName: (context) => SplashScreen(),
          Home.routeName: (context) => Home(),
        },
      ),
    );
  }
}
