import 'package:flutter/material.dart';
import 'package:atozpoint/constants.dart';

class SkillCard extends StatefulWidget {
  SkillCard({required this.icon, required this.title, required this.content});
  Widget icon;
  String title, content;

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start,
            children: [
              Material(
                borderRadius: BorderRadius.circular(
                    12),
                elevation: 10,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius
                        .circular(12),
                    color: Colors.white,),
                ),
              ),
              SizedBox(height: 16,),
              Text('${widget.title}',
                style: TextStyle(fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),),
              SizedBox(height: 16,),
              Expanded(child: Text(
                maxLines: null,
                '${widget.content}',
                style: TextStyle(fontSize: 14,
                  fontFamily: 'Roboto',),),),
            ],
          ),
          height: size.height * 0.4,
          width: size.width * 0.3,
          decoration: BoxDecoration(color: kLightBlue,
            borderRadius: BorderRadius.circular(12),),
        ),
      ),);
  }
}
