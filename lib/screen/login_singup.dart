import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_singup extends StatefulWidget {
  const Login_singup({super.key});

  @override
  State<Login_singup> createState() => _Login_singupState();
}

class _Login_singupState extends State<Login_singup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //tiêu đề
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Text(
                "sing up for tik tok",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            //nhập full name
            Container(
              width: 300,
              margin: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "full name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
            ),
            //nhập email
            Container(
              width: 300,
              margin: EdgeInsets.only(bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            //nhap passwork
            Container(
              width: 300,
              margin: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "passwork",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
            ),

            //nhap confim passwork
            Container(
              width: 300,
              margin: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "cofipasswork",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
            ),

            //button login
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
