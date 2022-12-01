import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

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
            child: Icon(Icons.arrow_back_sharp, color: secondaryBlackColor)),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                'assets/images/reset_password.png',
                width: MediaQuery.of(context).size.width * 0.4,
              )),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: 20,
                      right: 20),
                  child: Text(
                    'Reset \nPassword',
                    style: primaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  )),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: 20,
                    right: 20),
                child: Row(
                  children: [
                    Image.asset('assets/icons/icon_password.png',
                        width: MediaQuery.of(context).size.width * 0.06,
                        color: blackColor),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: TextField(
                          obscureText: true,
                      cursorColor: grayOne,
                      decoration: InputDecoration(
                          hintText: 'New Password',
                          hintStyle: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                          suffixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/icon_eye_hidden.png',
                                  height:
                                      MediaQuery.of(context).size.width * 0.06),
                            ],
                          )),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: 20,
                    right: 20),
                child: Row(
                  children: [
                    Image.asset('assets/icons/icon_password.png',
                        width: MediaQuery.of(context).size.width * 0.06,
                        color: blackColor),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: TextField(
                          obscureText: true,
                      cursorColor: grayOne,
                      decoration: InputDecoration(
                          hintText: 'Confirm New Password',
                          hintStyle: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                          suffixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/icon_eye_hidden.png',
                                  height:
                                      MediaQuery.of(context).size.width * 0.06),
                            ],
                          )),
                    ))
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: pinkOne),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Reset Password',
                        style: backgroundColorStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
