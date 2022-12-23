import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'assets/images/skincare_register.png',
                      width: MediaQuery.of(context).size.height * 0.12,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Center(
                      child: Text(
                        'Welcome',
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
                        'After registering, start beautifying yourself \nwith our treatments.',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  //?? Email address input
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.04,
                          left: defaultMargin,
                          right: defaultMargin),
                      child: TextField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: pinkOne,
                        style: TextStyle(color: secondaryBlackColor),
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
                                  height: defaultMargin,
                                ),
                              ],
                            ),
                            hintText: "Please enter your username",
                            hintStyle:
                                secondaryBlackStyle.copyWith(fontSize: 14)),
                      )),
                      //?? Password Input
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03,
                          left: defaultMargin,
                          right: defaultMargin),
                      child: TextField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.phone,
                        cursorColor: pinkOne,
                        style: TextStyle(color: secondaryBlackColor),
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
                                  height: defaultMargin,
                                ),
                              ],
                            ),
                            hintText: "Please enter your mobile phone",
                            hintStyle:
                                secondaryBlackStyle.copyWith(fontSize: 14)),
                      )),
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03,
                          left: defaultMargin,
                          right: defaultMargin),
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: pinkOne,
                        style: TextStyle(color: secondaryBlackColor),
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
                                  height: defaultMargin,
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
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: pinkOne),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: backgroundColorStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: defaultMargin,
                        right: defaultMargin,
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Have an account?',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 13, fontWeight: medium),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamedAndRemoveUntil(context, '/login-page', (route) => false);
                              },
                              child: Text(
                                'Login',
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
                          left: defaultMargin,
                          right: defaultMargin),
                      child: Image.asset('assets/images/or_account.png')),
                  Container(
                    margin: EdgeInsets.only(
                        left: defaultMargin,
                        right: defaultMargin,
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //?? account google
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
                        //?? account facebook
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
