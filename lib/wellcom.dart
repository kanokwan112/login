import 'package:flutter/material.dart';
import 'package:login_ui/constants.dart';
import 'customAppbar.dart';
import 'loginScreen.dart';


class Wellcom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset("assets/bg.jpg", fit: BoxFit.cover),
            Container(
              color: kSecondyColor.withOpacity(0.2),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: height * 0.1,
                    width: width,
                    child: CustomAppBar(
                      screenName: "Login",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: kSecondyColor,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  LoginScreen())),
                      child: Text(
                        "ไปหน้า Login",
                        style: TextStyle(color: kMainColor),
                      ))
                      
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
