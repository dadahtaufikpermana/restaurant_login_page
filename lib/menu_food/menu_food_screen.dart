import 'package:flutter/material.dart';
import 'package:restaurant_login_page/menu_food/food_card_widget.dart';

class MenuFoodScreen extends StatelessWidget {
  const MenuFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
        ),
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.all(8),
              child: TextFormField(
            decoration:
                const InputDecoration(border: InputBorder.none, hintText: ""),
          ),
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
                  FoodCard(
                    title: "Veggoe\nTomatto Mix",
                    imageFood: 'assets/image/ic_food.png',
                  ),
                  FoodCard(
                    title: "Egg and\nCucumber..",
                    imageFood: 'assets/image/ic_food3.png',
                  ),
                  FoodCard(
                    title: "Fried\nChicken m.",
                    imageFood: 'assets/image/ic_food4.png',
                  ),
                  FoodCard(
                    title: "Moi-moi\nand Ekpa",
                    imageFood: 'assets/image/ic_food5.png',
                  ),
                  FoodCard(
                    title: "Bakpau",
                    imageFood: 'assets/image/ic_food5.png',
                  ),
                  FoodCard(
                    title: "chuankie",
                    imageFood: 'assets/image/ic_food5.png',
                  ),
                  FoodCard(
                    title: "Veggoe\nTomatto Mix",
                    imageFood: 'assets/image/ic_food.png',
                  ),
                  FoodCard(
                    title: "Egg and\nCucumber..",
                    imageFood: 'assets/image/ic_food3.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
