// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 266,
              child: TextField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email : ",
                hintStyle: TextStyle(fontSize: 19),
                prefixIcon: Icon(Icons.person),
              ))),
          Container(
              margin: EdgeInsets.symmetric(vertical: 27),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 266,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password :  ",
                    hintStyle: TextStyle(fontSize: 19),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                  ))),
          
          
          
          
          ElevatedButton(
            onPressed: () {},
            
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.purple),
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66))),
            ),
            child: Text(
              "Log in",
              style: TextStyle(fontSize: 27),
            ),
          ),
        ],
      ),
    ));
  }
}
