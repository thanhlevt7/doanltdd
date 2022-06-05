import 'package:doan_flutter/resgiter/signUp_screen.dart';
import 'package:doan_flutter/screens/login/SignIn_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cake Bakery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     
      routes: {
        '/':(context) => const SignInPage(),
        '/SignUp': (context) => const SignUpPage(),
      },
      initialRoute: '/',
    );
  }
}
