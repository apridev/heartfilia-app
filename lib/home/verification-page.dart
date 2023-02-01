import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heartfilia_app/template.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_rounded, color: blackColor,)),
        elevation: 0,
      ),
      body: ListView(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1,
                      ),
                      child: Text(
                        'Verification Account',
                        style: primaryTextStyle.copyWith(
                            fontSize: 24, fontWeight: semiBold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Enter the verification code that\n we have sent to your email',
                    style: secondaryBlackStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                    textAlign: TextAlign.center,
                  ),
                  Form(
                      child: Container(
                    margin: EdgeInsets.only(top: 24, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                  // !bts 
                  Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: pinkOne),
                    child: TextButton(
                      style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, '/navigationbar-page', (route) => false);
                      },
                      child: Text(
                        'Verification',
                        style: backgroundColorStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ),
                  ),
                ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You don't get the code?",
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text('Resend', style: pinkOneStyle.copyWith(
                          fontSize: 13,
                          fontWeight: semiBold
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
    );
  }
}