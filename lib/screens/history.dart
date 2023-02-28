import 'package:flutter/material.dart';
import 'package:restaurant_login_page/menu_food/menu_food_screen.dart';

import '../utilities/styleSchema.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "History",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 180,
            ),
            Container(
              padding: const EdgeInsets.only(top: 50),
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/ic_note.png'))),
            ),
            Container(
                padding: const EdgeInsets.only(top: 5),
                child: const Text(
                  "No History Yet",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                )),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 10.0),
              child: const Center(
                child: Text(
                  "Hit the orange button down \nbelow to create an order",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 180,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return MenuFoodScreen();
                    },
                  ),
                );
              },
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: deepOrange800,
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
