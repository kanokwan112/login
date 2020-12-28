import 'package:flutter/material.dart';
import 'package:login_ui/constants.dart';
import 'package:login_ui/signupScreen.dart';
import 'package:login_ui/uiWidgets.dart';
import 'customAppbar.dart';

class LoginScreen extends StatelessWidget {
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
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: height * 0.1,
                    width: width,
                    child: CustomAppBar(
                      screenName: "Kanokwan & Sarawut",
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: height * 0.3,
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  inputWidget(
                    hintText: "Username",
                    primaryIcon: Icons.person_outline,
                  ),
                  inputWidget(
                      hintText: "Password",
                      primaryIcon: Icons.vpn_key,
                      endIcon: true,
                      sufixIconData: Icons.help_outline),
                      
                  mainButton(Icons.exit_to_app, () {}),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(noAccount,
                            style: TextStyle(color: kMainColor, fontSize: 16)),
                            
                        FlatButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SignUpScreen())),
                            child: Text(
                              "SignUp",
                              style: TextStyle(color: kMainColor),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
