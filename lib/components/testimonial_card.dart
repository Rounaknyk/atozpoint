import 'package:flutter/material.dart';
import 'package:atozpoint/constants.dart';
import 'package:flutter_svg/svg.dart';

class TestimonialCard extends StatefulWidget {
  TestimonialCard(
      {required this.content,
      required this.name,
      required this.designation,
      required this.profile,
      this.stars = 5});
  String content, name, designation;
  Widget profile;
  int stars;

  @override
  State<TestimonialCard> createState() => _TestimonialCardState();
}

class _TestimonialCardState extends State<TestimonialCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: size.height * 0.35,
        width: size.width * 0.3,
        decoration: BoxDecoration(
            border: Border.all(color: kDarkGreen),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StarsWidget(
              count: widget.stars,
            ),
            SizedBox(
              height: 32.0,
            ),
            Expanded(
              child: Text(
                '${widget.content}',
                style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              children: [
                widget.profile,
                SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.name}',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      '${widget.designation}',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StarsWidget extends StatelessWidget {
  StarsWidget({required this.count});
  int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(count, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0),
          child: SvgPicture.asset(
            'svgs/star.svg',
            height: 25,
            width: 26,
          ),
        );
      }),
    );
  }
}
