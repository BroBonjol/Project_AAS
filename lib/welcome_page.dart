import 'package:flutter/material.dart';

import 'package:slicing/login_page.dart';
import 'package:slicing/product.dart';
import 'package:slicing/register_page.dart';
import 'package:slicing/style.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Image.asset('assets/images/bg-login.png'),
            Image.asset(
              'assets/images/logo.png',
              width: 194,
              height: 67,
            ),
            Container(
              padding: const EdgeInsets.only(left: 22, right: 22),
              margin: EdgeInsets.only(top: 29),
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: ((context) {
                      return Product();
                    })));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(30, 35, 44, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
                child: Text('Login',
                style: loginText,)),
            ),
            
            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              margin: EdgeInsets.only(top: 15, bottom: 29),
              height: 56,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: ((context) {
                      return RegisterPage();
                    })));
                },
                style: TextButton.styleFrom(
                  side: BorderSide(
                    color: Color.fromRGBO(30, 35, 44, 1),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
                child: Text('Register',
                style: RegisterText))),
            Center(child: Text('Continue as a Guest',
            style: guestText,))
          ]),
        ),
    );
  }
}