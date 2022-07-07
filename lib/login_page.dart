import 'package:flutter/material.dart';
import 'package:slicing/style.dart';
import 'package:slicing/register_page.dart';
import 'package:slicing/welcome_page.dart';
import 'package:slicing/BelajarGetData.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child:
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, 
          children: <Widget>[
            Container(
            height: 41, width: 41,
            padding: EdgeInsets.only(right: 312, left: 22),
            margin: EdgeInsets.only(top: 56),
            child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WelcomePage();
              }));
            },
            child: Image.asset(
              'assets/images/icon.png',
            ),
            style: ElevatedButton.styleFrom(side: BorderSide(color: Color.fromRGBO(232, 236, 244, 1))),
          )),
            
            // SizedBox(height: 36),
            Image.asset(
              'assets/images/logo.png',
              width: 194,
              height: 67,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 22),
              margin: EdgeInsets.only(top: 35),
              height: 56,         
              child: TextField(
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(247, 248, 249, 1),
                      hintText: "Username", 
                      hintStyle: username,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color.fromRGBO(232, 236, 244, 1), width: 1),
                      ),
                    )
                  )
            ),

             Container(
              padding: EdgeInsets.only(left: 22, right: 22),
              margin: EdgeInsets.only(top: 15),
              height: 56,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(247, 248, 249, 1),
                      hintText: "Password",
                      hintStyle: username,
                      enabledBorder: OutlineInputBorder( 
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color.fromRGBO(232, 236, 244, 1), width: 1),                   
                      ),
                    )
                  )
            ),

            Container(
            padding: EdgeInsets.only(right:22),
            margin: EdgeInsets.only(top: 15),
            child: GestureDetector(
              onTap: (() {}),
              child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.right,
                      style: ForgotPassword,
                  ), 
            ),
          ),

            Container(
              padding: const EdgeInsets.only(left: 22, right: 22),
              margin: EdgeInsets.only(top: 30),
              height: 56,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: ((context) {
                          return BelajarGetData();
                        })));
                  },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(30, 35, 44, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
                child: Text('Login',
                style: login)),
            ),

            SizedBox(height: 35),
            Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left:22, right: 12),
                      child: Divider(
                        color: Color.fromRGBO(232, 236, 244, 1),
                        thickness: 1,
                      ),
                    ),
                  ),

                  Text("Or Login with",
                  style: ForgotPassword
                  ),

                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 12, right: 22),
                      child: Divider(
                        color: Color.fromRGBO(232, 236, 244, 1),
                        thickness: 1,
                      ),
                    ),
                  ),
              ]),

            Row(
                children: [
                Container(
                  height: 56, width: 105,
                  margin: EdgeInsets.only(top: 19,left: 22),
                  child: TextButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/facebook.png',
                    //width: 12,
                    //height: 24,
                  ),
                  style: TextButton.styleFrom(side: BorderSide(color: Color.fromRGBO(232, 236, 244, 1))),
                )),

              Container(
                  height: 56, width: 105,
                  margin: EdgeInsets.only(top: 19, right: 8, left: 8),
                  child: TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/google.png'),
                  style: TextButton.styleFrom(side: BorderSide(color: Color.fromRGBO(232, 236, 244, 1))),
                )),
              
              Container(
                  height: 56, width: 105,
                  margin: EdgeInsets.only(top: 19, right: 22),
                  child: TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/apple.png'),
                  style: TextButton.styleFrom(side: BorderSide(color: Color.fromRGBO(232, 236, 244, 1))),
                )),  
              ],
            ),
          
            Container(
              padding: EdgeInsets.only(top: 155, left: 93),
              child: Row(
                children: [
                  Text(
                    "Don't have account?",
                    style: HaveAccount,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                        return RegisterPage();
                    }));
                      },
                      child: Text(
                        'Register Now',
                        style: RegisterNow,
                      ))
                ],
            ))
        ]),
      ),
    );
  }
}