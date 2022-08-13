import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_widgets/Animations/AnimatedDefaultTextStyle.dart';

import 'Animations/AnimatedAlign.dart';
import 'Animations/AnimatedContainer.dart';
import 'Animations/AnimatedCrossfade.dart';
import 'Animations/AnimatedList.dart';
import 'Animations/AnimatedModalBarrier.dart';
import 'Animations/AnimatedOpacity.dart';
import 'Animations/AnimatedPhysicalModel.dart';
import 'Animations/AnimatedPositioned.dart';
import 'Animations/AnimatedSize.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>  with SingleTickerProviderStateMixin{



  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        body:ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20),

          children:  <Widget>[
            SizedBox(height: 60),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'AnimatedBuilder',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => animatedContainer(), transitionDuration: Duration(seconds: 0)));

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Container',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => animatedCrossfade(), transitionDuration: Duration(seconds: 0)));
                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Crossfade',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => animatedDefaultTextStyle(), transitionDuration: Duration(seconds: 0)));

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Default Text Style',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => animatedList(), transitionDuration: Duration(seconds: 0)));

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated List State',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => animatedAlign(), transitionDuration: Duration(seconds: 0)));
                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Align',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => animatedModalBarrier(), transitionDuration: Duration(seconds: 0)));

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Modal Barrier',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                    Navigator.push(context,
                        PageRouteBuilder(pageBuilder: (_, __, ___) => animatedOpacity(), transitionDuration: Duration(seconds: 0)));
                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Opacity',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => animatedPhysicalModel(), transitionDuration: Duration(seconds: 0)));
                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Physical Model',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => animatedPositioned(), transitionDuration: Duration(seconds: 0)));
                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Positioned',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => animatedSize(), transitionDuration: Duration(seconds: 0)));
                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Size',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Animated Widget',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Fade Transition',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Hero Animations',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Positioned Transition',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Rotation Transition',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Scale Transition',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Size Transition',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white
                    ),
                    child: Center(
                        child: Text(
                            'Slide Transition',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            )
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),

          ]
        //crossAxisAlignment: CrossAxisAlignment.start,


      )
    );
  }


}