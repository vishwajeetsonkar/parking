import 'package:flutter/material.dart';
import 'package:parking/models/users_model.dart';
import 'package:parking/screens/HomePage.dart';
import 'package:parking/screens/SignUp.dart';
import 'package:parking/screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  // runApp(
  //   MultiProvider(
  //     providers: [
  //       ChangeNotifierProvider(create: (_) => User())
  //     ],
  //     child: MyApp(),
  //     )
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginForm(),
        '/signUp': (context) => SignUpForm(),
        '/home': (context) => HomePage()
      }
    );
  }
}
