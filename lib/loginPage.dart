import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Restaurant Application",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,

      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget> [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/rectangle.png'),
                        fit: BoxFit.fill
                    )
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/bella_logo.png')
                            )
                          ),
                        ),
                    ),
                    Positioned(
                      child: Container(
                        margin: const EdgeInsets.only(top: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Login", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                            Text("Register", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                          ],
                          // children: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10)
                            )
                          ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey))
                            ),

                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email or Phone number",
                                  hintStyle: TextStyle(color: Colors.white)
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: const TextField(
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.white)
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),


    );
  }

}
