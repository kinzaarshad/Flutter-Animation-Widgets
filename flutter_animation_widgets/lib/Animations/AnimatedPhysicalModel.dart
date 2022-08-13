import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animatedPhysicalModel extends StatefulWidget {
  @override
  _PhysicalModelState createState() => _PhysicalModelState();
}

class _PhysicalModelState extends State<animatedPhysicalModel>  with SingleTickerProviderStateMixin{
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _first ? 0 : 15.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              borderRadius: _first
                  ?const BorderRadius.all(Radius.circular(0))
                  :const BorderRadius.all(Radius.circular(100)),
              child: Container(
                height: 240.0,
                width: 240.0,
                color: Colors.white,
                child:Image(
                image: AssetImage('assets/Camera.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: const Text('Toggle Animation'),
              onPressed: () {
                setState(() {
                  _first = !_first;
                });
              },
            ),
          ],
        ),
      ),
    );
  }



}