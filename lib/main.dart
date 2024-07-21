import 'package:atozpoint/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:atozpoint/pages/page2.dart';
import 'package:atozpoint/pages/page2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDfptsbRJeWvFrhZWBmJAkKL-W76ksButc",
        authDomain: "atozpoint-41217.firebaseapp.com",
        projectId: "atozpoint-41217",
        storageBucket: "atozpoint-41217.appspot.com",
        messagingSenderId: "527419070527",
        appId: "1:527419070527:web:baf52eeeb00e2df041c08a",
        measurementId: "G-7MNS1BSK4Y"
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        '/page2' : (context) => Page2(),
      },
    );
  }
}