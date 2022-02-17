import 'package:daco_login/utils/theme.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var kHeight = size.height;
    var kWidth = size.width;

    return Scaffold(
        body: SafeArea(
      child: Container(
        width: kWidth,
        height: kHeight,
        child: GridView.count(
          // physics: const BouncingScrollPhysics(),
          // primary: false,
          childAspectRatio: 2/0.8,
          crossAxisCount: 1,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          mainAxisSpacing: 90,
          // crossAxisSpacing: 1000,
          // shrinkWrap: true,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              autofocus: true,
              onPressed: () => Navigator.pop(context),
              alignment: Alignment.centerLeft,
              icon: const Icon(Icons.arrow_back),

            ),
            Container(
              // margin: EdgeInsets.only(top: 15),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Let\'s sign you in.\n\n',
                    style: kDefaultTextTheme().headline4,
                  ),
                  TextSpan(
                    text: 'Welcome back.\nYou\'ve been missed!',
                    style: kDefaultTextTheme().headline6,
                  ),
                  // TextSpan(text: 'You\'ve been missed.')
                ]),
              ),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Column(
              children: [
                const TextField(
                  scrollPadding: EdgeInsets.only(bottom: 10),
                  decoration: InputDecoration(
                    labelText: 'Phone, email or username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(bottom: 30),
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.wifi_password_outlined),
                          onPressed: () {},
                        )),
                  ),
                )
              ],
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Column(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(text: 'Don\'t have an account? '),
                    TextSpan(text: 'Register')
                  ]),
                ),
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Sign In'),
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffE4E8EE),
                          primary: const Color(0xff050406)),
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
