import 'package:flutter/material.dart';
import 'package:restaurant_login_page/screens/loginPage/loginPage.dart';
import 'package:restaurant_login_page/screens/loginPage/tab_controller.dart';
import '../utilities/styleSchema.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepRed700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 40),
            child: CircleAvatar(
              // backgroundImage: AssetImage('assets/image/logormv.png'),
              // backgroundColor: Colors.white,
              // radius: 40,
              backgroundColor: Colors.white,
              radius: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/ic_logo1.png'),
                backgroundColor: Colors.white,
                radius: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: const Text(
              'Food For Everyone',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/image/ic_face1.png',
                      scale: 1,
                    )),
                Image.asset('assets/image/ic_face2.png', scale: 1.1),
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TabSlide();
                    },
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: deepRed700),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}