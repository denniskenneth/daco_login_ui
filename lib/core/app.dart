import 'package:daco_login/features/daco/presentation/pages/home.dart';
import 'package:daco_login/utils/constants.dart';
import 'package:daco_login/utils/theme.dart';
import 'package:flutter/material.dart';

class DacoApp extends StatelessWidget {
  const DacoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      // color: Colors.black,
      theme: useDarkTheme(context),
      home: const HomePage(),
    );
  }
}
