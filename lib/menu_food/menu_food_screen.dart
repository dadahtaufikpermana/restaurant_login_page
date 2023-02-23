import 'package:flutter/material.dart';
import 'package:restaurant_login_page/menu_food/food_card_widget.dart';

class Menu_food_screen extends StatelessWidget {
  const Menu_food_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.all(8),
          child: Form(
              child: TextFormField(
            decoration:
                const InputDecoration(border: InputBorder.none, hintText: ""),
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 30.0),
              child: const Center(
                child: Text(
                  "Found 6 Result",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 45.0,
                top: 120.0,
              ),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 50,
                children: [
                  FoodCard(),
                  FoodCard(),
                  FoodCard(),
                  FoodCard(),
                  FoodCard(),
                  FoodCard(),
                  FoodCard(),
                  FoodCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
