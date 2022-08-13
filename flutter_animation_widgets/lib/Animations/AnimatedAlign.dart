import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animatedAlign extends StatefulWidget {
  @override
  _AlignState createState() => _AlignState();
}

class _AlignState extends State<animatedAlign>  with SingleTickerProviderStateMixin{
  AlignmentGeometry _alignment = Alignment.topRight;

  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight ? Alignment.bottomLeft : Alignment.topRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            width: 500,
            height:800,
            child: AnimatedAlign(
              alignment: _alignment,
              curve: Curves.ease,
              duration: Duration(seconds: 3),
              child: Image(
                image: AssetImage('assets/Table.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,

            child: InkWell(
              onTap: () {
                _changeAlignment();
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
                          'Start Animation',
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
          )
        ],
      ),
    );
  }


}

