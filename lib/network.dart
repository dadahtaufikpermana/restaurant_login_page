import 'package:flutter/material.dart';

class Network extends StatelessWidget {
  const Network({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      image: AssetImage('assets/image/network.png'))),
            ),
            Container(
                padding: const EdgeInsets.only(top: 5),
                child: const Text(
                  "No internet connection",
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
                  "your internet connection is currently \nnot available please check or try again",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            // const SizedBox(height: 70, width: 314,),
            Container(
              margin: const EdgeInsets.only(top: 300.0),
              height: 70,
              width: 314,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.red),
              child: const Center(
                child: Text(
                  "Start Ordering",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
