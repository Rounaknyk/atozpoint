import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:atozpoint/constants.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(color: Colors.white),
        height: size.height * 0.1,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('svgs/logo.svg'),
            Expanded(
              child:  Container(
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Home',),
                    SizedBox(width: 32.0,),
                    Text('Portfolio'),
                    SizedBox(width: 32.0,),
                    Text('About me'),
                    SizedBox(width: 32.0,),
                    Text('Testimonials'),
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
              width: 100,
              child: Center(
                child: Text('Contact Me'),
              ),
              decoration: BoxDecoration(border: Border.all(color: kPurple), borderRadius: BorderRadius.circular(4),),
            ),
          ],
        ),
      ),
    );
  }
}
