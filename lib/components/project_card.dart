import 'package:flutter/material.dart';
import 'package:atozpoint/constants.dart';
class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: size.height * 0.55,
          width: size.width * 0.3,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12),),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kLightPurple,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ahuse', style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold, fontSize: 32),),
                      SizedBox(height: 8.0,),
                      Expanded(
                        child:Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros.', style: TextStyle(fontFamily: 'Roboto', fontSize: 18),),),
                      SizedBox(height: 16.0,),
                      Row(
                        children: [
                          Text('View In GitHub', style: TextStyle(fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w600, color: kPink),),
                          SizedBox(width: 8.0,),
                          Icon(Icons.arrow_forward, color: kPink),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
