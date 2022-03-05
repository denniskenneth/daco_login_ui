import 'package:daco_login/core/app.dart';
import 'package:flutter/material.dart';


/// generate build files
///
/// flutter packages pub run build_runner watch --delete-conflicting-outputs
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const DacoApp();
  }
}

