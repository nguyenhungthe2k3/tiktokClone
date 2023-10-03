import 'package:demo1/screen/login_email.dart';
import 'package:demo1/screen/login_phone.dart';
import 'package:demo1/screen/login_singup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'LoginWidthPhNumber.dart';
// import 'LoginWidthEmail.dart';
// import 'RegScene.dart';

class LoginScene extends StatefulWidget {
  const LoginScene({Key? key}) : super(key: key);

  @override
  State<LoginScene> createState() => _LoginState();
}

class _LoginState extends State<LoginScene> {
  // @override
  // Widget build(BuildContext context) {
  //   return const Placeholder();
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //tiêu đề
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "Log in to TopTop",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),

            Container(
              width: 250,
              margin: EdgeInsets.only(bottom: 10),
              child: const Text(
                "Manage your account, check notificaions\ncomment on videos, and more",
                style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 145, 144, 143)),
                textAlign: TextAlign.center,
              ),
            ),

            //login by number phone ===================
            Container(
              width: 300,
              height: 50,
              margin: EdgeInsets.only(bottom: 10),
              child: OutlinedButton.icon(
                //style cho button
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  alignment: Alignment.centerLeft,
                ),
                //icon cho button
                icon: const Icon(Icons.phone,
                    size: 18, color: Color.fromRGBO(78, 78, 78, 1)),
                //label cho button
                label: const Text(
                  "Login with Phone Number",
                  style: TextStyle(color: Color.fromRGBO(78, 78, 78, 1)),
                ),
                onPressed: () {
                  //chuyển màn hình
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const Login_Phone()));
                }, //bắt sự kiện click
              ),
            ),

            //login by email ===================
            Container(
              width: 300,
              height: 50,
              child: OutlinedButton.icon(
                //style cho button
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  alignment: Alignment.centerLeft,
                ),
                //icon cho button
                icon: const Icon(Icons.mail,
                    size: 18, color: Color.fromRGBO(78, 78, 78, 1)),
                //label cho button
                label: const Text(
                  "Login with Email",
                  style: TextStyle(color: Color.fromRGBO(78, 78, 78, 1)),
                ),
                onPressed: () {
                  //chuyển màn hình
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const Login_Email()));
                }, //bắt sự kiện click
              ),
            ),

            //đăng ký khi chưa có tài khoản
            TextButton(
              onPressed: () {
                //chuyển màn hình
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => Login_singup()));
              },
              child: const Text("Don't have an account? Sign up",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 40, 147, 196))),
            ),
          ],
        ),
      ),
    );
  }
}
