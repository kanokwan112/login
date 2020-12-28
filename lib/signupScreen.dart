import 'package:flutter/material.dart';
import 'package:login_ui/constants.dart';
import 'package:login_ui/wellcom.dart';
import 'customAppbar.dart';

class SignUpScreen extends StatelessWidget {
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
                      screenName: "Sign Up",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(50),
                    margin: EdgeInsets.symmetric(vertical: 35),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.3)),
                    child: Icon(
                      Icons.camera_alt,
                      color: kMainColor.withOpacity(0.4),
                      size: 50,
                    ),
                  ),
                  inputWidget(
                    hintText: "Name",
                    primaryIcon: Icons.person_outline,
                  ),
                  inputWidget(
                    hintText: "Email",
                    primaryIcon: Icons.email,
                  ),
                  inputWidget(
                    hintText: "Password",
                    primaryIcon: Icons.vpn_key,
                  ),
                  inputWidget(
                    hintText: "Phone Number",
                    primaryIcon: Icons.phone,
                  ),
                  FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: kSecondyColor,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Wellcom())),
                      child: Text(
                        "wellcom",
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

  Padding inputWidget(
      {String hintText,
      IconData primaryIcon,
      bool endIcon = false,
      IconData sufixIconData}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: endIcon
              ? Icon(
                  sufixIconData,
                  color: kMainColor,
                )
              : null,
          hintText: hintText,
          hintStyle: TextStyle(color: kMainColor),
          icon: Icon(
            primaryIcon,
            color: kMainColor,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: kMainColor.withOpacity(0.8), width: 1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kMainColor, width: 1.5),
          ),
        ),
      ),
    );
  }
}
