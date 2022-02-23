import 'package:daco_login/features/daco/presentation/pages/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../utils/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var kHeight = size.height;
    var kWidth = size.width;
    var kTextTheme = kDefaultTextTheme();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1A1720),
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Form(
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Create new Account',
                          style: kDefaultTextTheme().headline4?.copyWith(
                            fontSize: 30,
                            fontWeight: FontWeight.w700
                          ),
                      ),
                      TextSpan(
                          text: '.',
                          style: kDefaultTextTheme().headline4?.copyWith(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff2296F3)
                        ),
                      )
                    ]),
                  ),
                  SizedBox(width: double.infinity, height: 70,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: kWidth * 0.4,
                          child: TextFormField(

                            decoration: InputDecoration(
                              hintText: 'First name',

                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          width: kWidth * 0.4,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Last name',
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ]),
                  SizedBox(width: double.infinity, height: 50,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(width: double.infinity, height: 50,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(width: double.infinity, height: 50,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(width: double.infinity, height: 80,),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Sign In'),
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffE4E8EE),
                          primary: const Color(0xff050406)),
                    ),
                  ),
                  SizedBox(width: double.infinity, height: 5,),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Already have an accunt? ',
                        style: kTextTheme.subtitle2?.copyWith(
                          color: Color(0xffe4e8ee).withOpacity(0.4),
                        )
                    ),
                    TextSpan(
                      text: 'Sign in',
                      style: kTextTheme.subtitle2?.copyWith(
                        color: const Color(0xff2296F3)
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => SigninPage()),
                            ),
                    ),
                  ])),
                ],
              ),
            )),
      )),
    );
  }
}
