import 'package:flutter/material.dart';
import 'package:heartfilia_app/onboarding-data.dart';
import 'package:heartfilia_app/template.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndikator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 12),
      duration: Duration(milliseconds: 15),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          color: currentIndex == index ? greenOne : pinkTwo,
          shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              controller: _pageController,
              itemCount: onBoardingList.length,
              itemBuilder: ((context, index) => Column(
                    children: [
                      Container(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.06),
                          child: Text(
                            onBoardingList[index].title,
                            style: primaryTextStyle.copyWith(
                                fontSize: 20, fontWeight: bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02),
                        child: Text(
                          onBoardingList[index].subtitle,
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: Center(
                              child: Image.asset(
                            onBoardingList[index].image,
                            height: 190,
                          ))),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(onBoardingList.length,
                              (index) => dotIndikator(index)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03),
                        child: Text(
                          'Login and register are free',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            color: pinkOne,
                            borderRadius: BorderRadius.circular(12)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login-page');
                          },
                          child: Text(
                            'Continue with Mobile Number',
                            style: backgroundColorStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 30
                        ),
                          child: Image.asset('assets/images/or_account.png')
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 30
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: grayOne,
                                  width: 1
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/icon_google.png', width: 24,),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text('Google', style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: medium
                                  ),)
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: grayOne,
                                  width: 1
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/icon_facebook.png', width: 22,),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text('Facebook', style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: medium
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      )),
    );
  }
}
