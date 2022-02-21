import 'package:daco_login/features/daco/presentation/pages/register.dart';
import 'package:daco_login/features/daco/presentation/pages/sign_in.dart';
import 'package:daco_login/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var kHeight = size.height;
    var kWidth = size.width;
    var kTextTheme = kDefaultTextTheme();
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final String assetName = 'assets/static/collaboration-team-svgrepo-com.svg';

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: 10, left: 10),
          decoration: const BoxDecoration(
              // color: Colors.white,

              ),
          child: SingleChildScrollView(child: (() {
            if (!isLandscape) {
              return SizedBox(
                  height: kHeight * 0.9,
                  width: kWidth,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        assetName,
                        color: null,
                        semanticsLabel: 'A red up arrow',
                        height: kHeight * 0.5,
                      ),
                      Column(
                        children: [
                          RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'Enterprise team\ncollaboration.',
                                  style: kTextTheme.headline4,
                                ),
                              ])),
                        ],
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(style: kTextTheme.bodyText1, children: [
                          TextSpan(
                              text:
                                  'Bring together your files, your tools,\nprojects and people. Including a new\nmobile and desktop application',
                              style: kTextTheme.bodyText1
                                  ?.copyWith(letterSpacing: 0.1, height: 1.5))
                        ]),
                      ),
                      Expanded(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Positioned(
                              right: kWidth * 0.22,
                              child: TextButton(
                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SigninPage())),
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(0x0ff3B3A42),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 30),
                                    textStyle: kTextTheme.bodyText1?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        letterSpacing: 0.2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: const Text(
                                    'Sign In',
                                    style: TextStyle(color: Color(0xffF4F4F5)),
                                  )),
                            ),
                            Positioned(
                              left: kWidth * 0.23,
                              child: ElevatedButton(
                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterPage())),
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 30),
                                    textStyle: kTextTheme.bodyText1?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        letterSpacing: 0.2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(color: Color(0xff29262E)),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ));
            } else {
              return Container(
                height: kHeight + (kHeight * 0.3),
                width: kWidth,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      assetName,
                      color: null,
                      semanticsLabel: 'A red up arrow',
                      height: kHeight * 0.5,
                    ),
                    Column(
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Enterprise team\ncollaboration.',
                                style: kTextTheme.headline4,
                              ),
                            ])),
                      ],
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(style: kTextTheme.bodyText1, children: [
                        TextSpan(
                            text:
                            'Bring together your files, your tools,\nprojects and people. Including a new\nmobile and desktop application',
                            style: kTextTheme.bodyText1
                                ?.copyWith(letterSpacing: 0.1, height: 1.5))
                      ]),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        children: [
                          Positioned(
                            right: kWidth * 0.3,
                            child: TextButton(
                                onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const SigninPage())),
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0x0ff3B3A42),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 40),
                                  textStyle: kTextTheme.bodyText1?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      letterSpacing: 0.2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(color: Color(0xffF4F4F5)),
                                )),
                          ),
                          Positioned(
                            left: kWidth * 0.3,
                            child: ElevatedButton(
                                onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const RegisterPage())),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 40),
                                  textStyle: kTextTheme.bodyText1?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      letterSpacing: 0.2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  'Register',
                                  style: TextStyle(color: Color(0xff29262E)),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          })()),
        ),
      ),
    );
  }
}
