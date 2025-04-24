import 'package:flutter/material.dart';
import 'package:frontend/features/auth/pages/signup.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(20),
                enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(
                      color:Colors.grey.shade300,
                      width:2
                    ),
                    borderRadius:BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide( width:1.5)
                )
              ),
              useMaterial3: true
      ),
      home: const SignUpPage()
    );
  }
}