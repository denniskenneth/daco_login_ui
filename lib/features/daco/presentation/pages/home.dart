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

    final String assetName = 'assets/static/collaboration-team-svgrepo-com.svg';

    return Scaffold(
      body: Container(
        width: kWidth,
        height: kHeight,
        padding: EdgeInsets.only(
            top: 20, bottom: kHeight * 0.02, right: 10, left: 10),
        decoration: const BoxDecoration(
            // color: Colors.white,

            ),
        child: SafeArea(
          child: Column(
            children: [
              SvgPicture.asset(
                  assetName,
                  color: null,
                  semanticsLabel: 'A red up arrow',
                height: kHeight * 0.5,
              ),
              Column(
                children:  [
                  RichText(
                    textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Enterprise team\ncollaboration.',
                              style: kTextTheme.headline4,
                          ),

                        ]
                      )
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text:  TextSpan(
                    style: kTextTheme.bodyText1,
                    children: [
                      TextSpan(
                        text: 'Bring together your files, your tools,\nprojects and people. Including a new\nmobile and desktop application',
                        style: kTextTheme.bodyText1?.copyWith(
                          letterSpacing: 0.1,
                          height: 1.5
                        )
                      )
                    ]
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterPage())),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            textStyle: const TextStyle(
                              color: Colors.black,
                            )),
                        child: const Text(
                          'Register',
                          style: TextStyle(color: Color(0xff29262E)),
                        )),
                    TextButton(
                        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SigninPage())),
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0x0ff3B3A42),
                            textStyle: const TextStyle()),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Color(0xffF4F4F5)),
                        )),


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
