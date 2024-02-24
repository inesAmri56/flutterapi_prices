import 'package:flutter/material.dart';
import 'package:flutterapi_prices/screen1.dart';

import 'network/dio_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();//because Future must not  be in the main app
  DioHelper.init();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:  Screen1(),
    );
  }
}

