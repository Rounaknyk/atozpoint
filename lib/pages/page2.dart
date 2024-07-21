import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset('anim/lgtbq.json'),
              // Image.asset('assets/lgbtq.png'),
              SizedBox(height: 64,),
              Center(
                child: Text('IF YOU CLOSE/MINIMIZE THIS TAB\n\nYOU ARE GAY!', style: TextStyle(fontSize: 44, color: Colors.white, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
              ),
              SizedBox(height: 16),
              Text('(This does not apply to the developer of this website)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
