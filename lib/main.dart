import 'package:dukaan_app1/screens/additionalInfo.dart';
import 'package:dukaan_app1/screens/homeScreen.dart';
import 'package:dukaan_app1/screens/manageStore.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeView());
  }
}
