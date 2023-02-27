import 'package:flutter/material.dart';
import 'package:restaurant_login_page/history.dart';
import 'package:restaurant_login_page/loginPage.dart';
import 'package:restaurant_login_page/menu_food/menu_food_screen.dart';
import 'package:restaurant_login_page/network.dart';
import 'package:restaurant_login_page/orders.dart';
import 'package:restaurant_login_page/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: const MenuFoodScreen(),
    );
  }
}
