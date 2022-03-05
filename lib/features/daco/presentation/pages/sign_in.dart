import 'package:daco_login/features/daco/domain/entities/account/account.dart';
import 'package:daco_login/features/daco/presentation/manager/auth_cubit.dart';
import 'package:daco_login/features/daco/presentation/pages/register.dart';
import 'package:daco_login/utils/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  var _loading = false;
  final _emailController = TextEditingController(),
      _passwordController = TextEditingController();
  final _authCubit = AuthCubit();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var kHeight = size.height;
    var kWidth = size.width;
    var kTextTheme = kDefaultTextTheme();

    return BlocListener<AuthCubit, AuthState>(
      bloc: _authCubit,
      listener: (context, state) {
        if (!mounted) return;

        /// loading
        setState(() => _loading = state is AuthLoading);

        /// success
        if (state is AuthSuccess<Account>) {
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(
                SnackBar(content: Text('Logged in as ${state.data.username}')));
        }

        /// fails
        if (state is AuthError) {
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
          // backgroundColor: useDarkTheme(con).scaffoldBackgroundColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: useDarkTheme(context).scaffoldBackgroundColor,
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back),
            ),
          ),
          body: SafeArea(
            child: Container(
                width: kWidth,
                height: kHeight,
                child: _loading
                    ? const CircularProgressIndicator.adaptive()
                    : SingleChildScrollView(
                        padding: EdgeInsets.only(left: 24.0, right: 24.0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: kHeight * 0.8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: '',
                                      style: kDefaultTextTheme().headline4,
                                      children: [
                                        TextSpan(text: 'Let\'s sign you in'),
                                        TextSpan(
                                            text: '.\n\n',
                                            style: kTextTheme.headline4
                                                ?.copyWith(
                                                    color: const Color(
                                                        0xff2296F3))),
                                      ]),
                                  TextSpan(
                                    text: 'Welcome back.\nYou\'ve been missed!',
                                    style: kDefaultTextTheme().headline6,
                                  ),
                                  // TextSpan(text: 'You\'ve been missed.')
                                ]),
                              ),
                              Column(
                                children: [
                                  TextField(
                                    controller: _emailController,
                                    scrollPadding: EdgeInsets.only(bottom: 10),
                                    decoration: const InputDecoration(
                                      labelText: 'Phone, email or username',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                              bottomRight:
                                                  Radius.circular(15))),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: TextField(
                                      controller: _passwordController,
                                      scrollPadding:
                                          EdgeInsets.only(bottom: 30),
                                      decoration: InputDecoration(
                                          labelText: 'Password',
                                          border: const OutlineInputBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  bottomLeft:
                                                      Radius.circular(15),
                                                  topRight: Radius.circular(15),
                                                  bottomRight:
                                                      Radius.circular(15))),
                                          suffixIcon: IconButton(
                                            icon: const Icon(
                                                Icons.wifi_password_outlined),
                                            onPressed: () {},
                                          )),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                // mainAxisSize: MainAxisSize.max,
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Don\'t have an account? ',
                                          style: kTextTheme.subtitle2?.copyWith(
                                            color: Color(0xffe4e8ee)
                                                .withOpacity(0.4),
                                          )),
                                      TextSpan(
                                        text: 'Register',
                                        style: kTextTheme.subtitle2?.copyWith(
                                            color: const Color(0xff2296F3)),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      const RegisterPage())),
                                      )
                                    ]),
                                  ),
                                  SizedBox(
                                      width: double.infinity,
                                      child: TextButton(
                                        onPressed: _validAndSignin,
                                        child: const Text('Sign In'),
                                        style: TextButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xffE4E8EE),
                                            primary: const Color(0xff050406)),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
          )),
    );
  }

  void _validAndSignin() {
    var email = _emailController.text.trim();
    var password = _passwordController.text.trim();
    _authCubit.login(username: email, password: password);
  }
}
