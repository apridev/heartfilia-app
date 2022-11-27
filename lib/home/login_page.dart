import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close, color: secondaryBlackColor)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Image.asset(
            'assets/images/skincare_login.png',
            width: MediaQuery.of(context).size.height * 0.12,
          )),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Center(
              child: Text(
                'Do login',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: Center(
              child: Text(
                'Start logging in before you start your \nself-care',
                style:
                    primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04,
                  left: 20,
                  right: 20),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.emailAddress,
                cursorColor: graythree,
                style: TextStyle(color: blackColor),
                // obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: pinkOne)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.black26)),
                    // prefixIcon: Icon(Icons.person),
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/icon_username.png',
                          height: 20,
                        ),
                      ],
                    ),
                    hintText: "Please enter your username",
                    hintStyle: secondaryBlackStyle.copyWith(fontSize: 14)),
              )),
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 20,
                  right: 20),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.emailAddress,
                cursorColor: graythree,
                style: TextStyle(color: blackColor),
                // obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: pinkOne)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.black26)),
                    // prefixIcon: Icon(Icons.person),
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/icon_phonenumber.png',
                          height: 20,
                        ),
                      ],
                    ),
                    hintText: "Please enter your mobile phone",
                    hintStyle: secondaryBlackStyle.copyWith(fontSize: 14)),
              )),
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 20,
                  right: 20),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.emailAddress,
                cursorColor: graythree,
                style: TextStyle(color: blackColor),
                // obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: pinkOne)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.black26)),
                    // prefixIcon: Icon(Icons.person),
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/icon_password.png',
                          height: 20,
                        ),
                      ],
                    ),
                    hintText: "6-10 Characters of number or letters",
                    hintStyle: secondaryBlackStyle.copyWith(fontSize: 14)),
              )),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: pinkOne
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text('Login', style: backgroundColorStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium
                    ),),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
