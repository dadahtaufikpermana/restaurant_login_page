import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: SizedBox(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 185,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Column(
                    children: [
                      Text(
                        "Veggie\nTomatto Mix",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "N1,900",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: -45,
                left: 15,
                child: Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/image/ic_food.png'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
