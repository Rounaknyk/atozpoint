import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:atozpoint/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:atozpoint/components/top_bar.dart';
import 'package:atozpoint/pages/page2.dart';
import 'package:atozpoint/components/skill_card.dart';
import 'package:atozpoint/components/project_card.dart';
import 'package:atozpoint/components/profile_card.dart';
import 'package:atozpoint/components/testimonial_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> wids = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    wids = [
      Container(
        height: size.height * 0.3,
        width: size.width * 0.25,
        decoration: BoxDecoration(
            border: Border.all(color: kPurple),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage('assets/me.jpg'), fit: BoxFit.cover)),
      ),
      Container(
        height: size.height * 0.3,
        width: size.width * 0.15,
        decoration: BoxDecoration(
            border: Border.all(color: kPurple),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage('assets/me.jpg'), fit: BoxFit.cover)),
      ),
      Container(
        height: size.height * 0.3,
        width: size.width * 0.15,
        decoration: BoxDecoration(
            border: Border.all(color: kPurple),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage('assets/me.jpg'), fit: BoxFit.cover)),
      ),
      Container(
        height: size.height * 0.3,
        width: size.width * 0.25,
        decoration: BoxDecoration(
            border: Border.all(color: kPurple),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage('assets/me.jpg'), fit: BoxFit.cover)),
      ),
    ];
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Navigator.pushNamed(context, '/page2');
      // }),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TopBar(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(color: kLightBlue),
                height: size.height * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hey, I am $homeName',
                              style: GoogleFonts.roboto(fontSize: 22),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(text: 'I create '),
                                    TextSpan(
                                        text: 'Fullstack  Apps ',
                                        style:
                                            GoogleFonts.roboto(color: kPurple)),
                                    TextSpan(text: 'and Websites'),
                                  ],
                                  style: GoogleFonts.roboto(
                                      fontSize: 63,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '$homeDes',
                              style: GoogleFonts.roboto(
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              height: 64,
                            ),
                            Container(
                              padding: EdgeInsets.all(16.0),
                              height: size.height * 0.07,
                              width: size.width * 0.09,
                              decoration: BoxDecoration(
                                color: kPurple,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Text(
                                  'Get In Touch',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                            child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                wids[0],
                                wids[1],
                              ],
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                wids[2],
                                wids[3],
                              ],
                            ),
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 64,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Skills',
                      style: TextStyle(
                          fontFamily: 'Roboto', fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'My Expertise',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 54),
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 64.0),
                        child: Row(
                          children: [
                            SkillCard(
                              title: 'Strategy & Directio',
                              icon: Container(),
                              content:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.',
                            ),
                            SkillCard(
                              title: 'Strategy & Directio',
                              icon: Container(),
                              content:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.',
                            ),
                            SkillCard(
                              title: 'Strategy & Directio',
                              icon: Container(),
                              content:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.',
                            ),
                            SkillCard(
                              title: 'Strategy & Directio',
                              icon: Container(),
                              content:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/me.jpg',
                          width: size.width * 0.5,
                          height: size.height * 0.8,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 21,
                                fontFamily: 'Roboto'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'About Me',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 64,
                                fontFamily: 'Roboto'),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce varius faucibus massa sollicitudin amet augue. Nibh metus a semper purus mauris duis. Lorem eu neque, tristique quis duis. Nibh scelerisque ac adipiscing velit non nulla in amet pellentesque.

Sit turpis pretium eget maecenas. Vestibulum dolor mattis consectetur eget commodo vitae. Amet pellentesque sit pulvinar lorem mi a, euismod risus r.
                              ''',
                            style:
                                TextStyle(fontSize: 24, fontFamily: 'Roboto'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Projects',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'My Portfolio',
                          style: TextStyle(
                              fontSize: 54,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          height: size.height * 0.07,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.sports_basketball,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Visit my Github',
                                style: TextStyle(
                                    fontFamily: 'Roboto', color: Colors.white),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: kPink,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ProjectCard(),
                            ProjectCard(),
                            ProjectCard(),
                            ProjectCard(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: size.height * 0.8,
                color: kLightBlue,
                padding: EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Client Feedbacks',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto'),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Customer Testimonials',
                        style: TextStyle(
                            fontSize: 54,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              TestimonialCard(
                                  name: 'Dianne Russell',
                                  designation: 'Starbucks',
                                  profile: ProfileCard(backgroundColor: kPink),
                                  content:
                                      '"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra."'),
                              TestimonialCard(
                                  name: 'Dianne Russell',
                                  designation: 'Starbucks',
                                  profile: ProfileCard(
                                      backgroundColor: kLightPurple),
                                  content:
                                      '"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra."'),
                              TestimonialCard(
                                  name: 'Dianne Russell',
                                  designation: 'Starbucks',
                                  profile: ProfileCard(
                                      backgroundColor: Colors.blueAccent),
                                  content:
                                      '"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra."'),
                              TestimonialCard(
                                  name: 'Dianne Russell',
                                  designation: 'Starbucks',
                                  profile:
                                      ProfileCard(backgroundColor: kDarkGreen),
                                  content:
                                      '"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra."'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                    width: size.width * 0.6,
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Get In Touch',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            'Contact Me',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 54),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 16),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'First name',
                                          style:
                                              TextStyle(fontFamily: 'Roboto'),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Last name',
                                          style:
                                              TextStyle(fontFamily: 'Roboto'),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Email',
                                          style:
                                              TextStyle(fontFamily: 'Roboto'),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Phone number',
                                          style:
                                              TextStyle(fontFamily: 'Roboto'),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Choose a topic',
                                    style: TextStyle(fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: kDarkGreen),
                                    ),
                                    child: DropdownButton(
                                      items: [
                                        DropdownMenuItem(
                                          child: Text('Kjh'),
                                          value: 'ada',
                                        ),
                                        DropdownMenuItem(
                                          child: Text('Kjhasas'),
                                          value: 'ads',
                                        ),
                                        DropdownMenuItem(
                                          child: Text('Kjasah'),
                                          value: 'asds',
                                        ),
                                      ],
                                      onChanged: (value) {},
                                      isExpanded: true,
                                      borderRadius: BorderRadius.circular(12),
                                      underline: Container(),
                                      focusColor: Colors.transparent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Message',
                                    style: TextStyle(fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Container(
                                    child: TextFormField(
                                      minLines: 6,
                                      maxLines: null,
                                      decoration: InputDecoration(border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Center(
                                child: Container(
                                  padding: EdgeInsets.all(16.0),
                                  height: size.height * 0.06,
                                  width: size.width * 0.09,
                                  decoration: BoxDecoration(
                                    color: kPurple,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 100,
                color: kLightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
