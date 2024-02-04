import 'package:flutter/material.dart';
import 'package:ozhantv/screens/contactScreen.dart';
import 'package:ozhantv/screens/homeScreen.dart';
import 'package:ozhantv/screens/loginScreen.dart';
import 'package:ozhantv/screens/profileScreen.dart';
import 'package:ozhantv/screens/registerScreen.dart';
import 'package:ozhantv/screens/userPreferencesScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ozhantv',
      debugShowCheckedModeBanner: false,
      routes: {
        //map yapısı 
        '/home': (context) => homeScreen(),
        '/profile': (context) => profileScreen(),
        '/login': (context) => loginScreen(),
        '/register': (context) => registerScreen(),
        '/userPreference': (context) => UserPreferences(),
        '/contact': (context) => contactScreen(),
      },
    
      initialRoute: '/login', //bizi ilk karşılayacak olan ekran
        //projenin temasını ayarlama 
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
    );
  }
}
