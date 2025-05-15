import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';  // import Firebase core
import 'package:noteapp/screens/LoginPage.dart';
import 'package:noteapp/screens/RegisterPage.dart';
import 'screens/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
