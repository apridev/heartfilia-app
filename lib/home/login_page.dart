import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: GestureDetector(
          onTap: (){
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04
                    ),
                    child: Center(
                        child: Image.asset(
                      'assets/images/skincare_login.png',
                      width: MediaQuery.of(context).size.height * 0.12,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Center(
                      child: Text(
                        'Do Login',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: Center(
                      child: Text(
                        'Start logging in before you start \nyour self-care',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
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
                        cursorColor: pinkOne,
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
                            hintStyle:
                                secondaryBlackStyle.copyWith(fontSize: 14)),
                      )),
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03,
                          left: 20,
                          right: 20),
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: pinkOne,
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
                            suffixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/icon_eye_hidden.png', height: 22,),
                              ],
                            ),
                            hintText: "6-10 Characters of number or letters",
                            hintStyle:
                                secondaryBlackStyle.copyWith(fontSize: 14)),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            left: 20,
                            right: 20),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Icon(Icons.close)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'Forget \nPassword',
                                            style: primaryTextStyle.copyWith(
                                                fontSize: 18,
                                                fontWeight: semiBold),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'Don’t worry! It happens. Please enter the address associeted with your account.',
                                            style: secondaryBlackStyle.copyWith(
                                                fontSize: 14, fontWeight: medium),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02,
                                            ),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/icons/icon_email.png',
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.06,
                                                    color: blackColor),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Expanded(
                                                    child: TextField(
                                                  cursorColor: pinkOne,
                                                  decoration: InputDecoration(
                                                    hintText: 'Email / Username',
                                                    hintStyle:
                                                        primaryTextStyle.copyWith(
                                                            fontSize: 14,
                                                            fontWeight: medium),
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.03),
                                            child: Container(
                                              width: double.infinity,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.07,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(18),
                                                  color: pinkOne),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Submit',
                                                  style: backgroundColorStyle
                                                      .copyWith(
                                                          fontSize: 14,
                                                          fontWeight: medium),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: MediaQuery.of(context).size.height * 0.04
                                            ),
                                            child: Text('We have sent a password reset message to your email. Please check your email.', style: secondaryBlackStyle.copyWith(
                                              fontSize: 14,
                                              fontWeight: medium
                                            ), textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Text(
                            'Forget Password?',
                            style: primaryTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: pinkOne),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/verification-page');
                        },
                        child: Text(
                          'Login',
                          style: backgroundColorStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset('assets/icons/icon_remember_me_off.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.07),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Remember me',
                                style: primaryTextStyle.copyWith(
                                    fontSize: 13, fontWeight: medium),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Don't have account?",
                              style: primaryTextStyle.copyWith(
                                  fontSize: 13, fontWeight: medium),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/register-page');
                              },
                              child: Text(
                                'Register',
                                style: pinkOneStyle.copyWith(
                                    fontSize: 13, fontWeight: semiBold),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                          left: 20,
                          right: 20),
                      child: Image.asset('assets/images/or_account.png')),
                  Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: grayOne, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/icon_google.png',
                                width: 24,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Google',
                                style: primaryTextStyle.copyWith(
                                    fontSize: 14, fontWeight: medium),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: grayOne, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/icon_facebook.png',
                                width: 22,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Facebook',
                                style: primaryTextStyle.copyWith(
                                    fontSize: 14, fontWeight: medium),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
