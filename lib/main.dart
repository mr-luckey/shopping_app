import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/views/starting_screen.dart';
import 'package:splash_view/source/source.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashView(
          backgroundColor: Colors.black,
          loadingIndicator: RefreshProgressIndicator(),
          logo: FlutterLogo(),
          done: Done(firstscreen()),
        ));
  }
}
