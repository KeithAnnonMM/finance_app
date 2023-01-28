import 'package:finance_app/reusables/reusable_text.dart';
import 'package:finance_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance App',
      theme: ThemeData.dark(),
      routes: {
        '/home': (context) => const HomePage(),
      },
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void pendAction() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  void initState() {
    pendAction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 200, 40.0, 20.0),
        child: Column(
          children: [
            textWidget(
              text: "Set your Financial Goals",
              size: 50,
              color: Colors.white,
              isHead: true,
            ),
            const SizedBox(height: 10),
            textWidget(
              text:
                  "Our smart finance app will keep your records stats and track",
              color: Colors.white,
              size: 22,
              isHead: false,
            )
          ],
        ),
      ),
    );
  }
}
