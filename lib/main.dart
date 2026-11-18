import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter_33_samuel/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Learning App',
      initialRoute: Routes.login,
      getPages: Routes.myPages,
      
    );
  }
}