import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.all(8),
          child: Form(
              child: TextFormField(
            decoration:
                const InputDecoration(border: InputBorder.none,),
          )),
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
                      image: AssetImage('assets/image/ic_search.png'))),
            ),
            Container(
                padding: const EdgeInsets.only(top: 5),
                child: const Text(
                  "Item Not Found",
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
                  "Try Searching the item with \nthe different keyword",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            // const SizedBox(height: 70, width: 314,),
            Container(
              margin: const EdgeInsets.only(top: 200.0),
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
