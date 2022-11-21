import 'package:finaceiro_flutter/features/onboarding/onboarding_pege.dart';
import 'package:finaceiro_flutter/features/splash/splash_pege.dart';
import 'package:flutter/material.dart';

import 'features/sing_up/sing_up_page.dart';

void main() {
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
          primarySwatch: Colors.blue,
        ),
        home: SingUpPage());
  }
}
