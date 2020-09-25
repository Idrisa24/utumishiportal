import 'package:flutter/material.dart';
import 'package:utumishiportal/screens/intro/intro_screen.dart';
import 'package:provider/provider.dart';
import 'core/viewmodels/home_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'SF Pro Text'),
        home: IntroScreen(),
        // home: HomeLoginView(),
      ),
    );
  }
}
