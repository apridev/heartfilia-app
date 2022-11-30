import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image.asset(
                  'assets/images/skincare_register.png',
                  width: MediaQuery.of(context).size.height * 0.12,
                )),
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
                          hintStyle:
                              secondaryBlackStyle.copyWith(fontSize: 14)),
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
                          hintStyle:
                              secondaryBlackStyle.copyWith(fontSize: 14)),
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
                          hintStyle:
                              secondaryBlackStyle.copyWith(fontSize: 14)),
                    )),
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
                        'Register',
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
                              width: 12,
                            ),
                            Text(
                              'Remember me',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: medium),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Have an account?',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/register-page');
                            },
                            child: Text(
                              'Login',
                              style: pinkOneStyle.copyWith(
                                  fontSize: 14, fontWeight: semiBold),
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
    );
  }
}
