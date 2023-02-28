import 'package:flutter/material.dart';
import 'package:restaurant_login_page/screens/checkout_screen.dart';
import 'package:restaurant_login_page/screens/detail_product_screen.dart';
import 'package:restaurant_login_page/screens/history.dart';
import 'package:restaurant_login_page/screens/loginPage/loginPage.dart';
import 'package:restaurant_login_page/menu_food/menu_food_screen.dart';
import 'package:restaurant_login_page/screens/loginPage/loginPage.dart';
import 'package:restaurant_login_page/screens/loginPage/tab_controller.dart';
import 'package:restaurant_login_page/screens/network.dart';
import 'package:restaurant_login_page/screens/orders.dart';
import 'package:restaurant_login_page/screens/cart/cart_screen.dart';
import 'package:restaurant_login_page/screens/profile/profile_change_screen.dart';
import 'package:restaurant_login_page/screens/profile/profile_screen.dart';
import 'package:restaurant_login_page/screens/splash_screen.dart';
import 'package:restaurant_login_page/screens/search.dart';

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
      home:  ProfileScreen(),
    );
  }
}
