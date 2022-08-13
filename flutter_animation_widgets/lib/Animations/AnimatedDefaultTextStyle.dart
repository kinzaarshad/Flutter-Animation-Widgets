import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class animatedDefaultTextStyle extends StatefulWidget {
  @override
  _DefaultTextStyleState createState() => _DefaultTextStyleState();
}

class _DefaultTextStyleState extends State<animatedDefaultTextStyle>  with SingleTickerProviderStateMixin{
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 250,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                curve: Curves.bounceInOut,
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: Text(
                  'Flutter Agency',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Call setState. This tells Flutter to rebuild the
          // UI with the changes.
          setState(() {
            _fontSize = _first ? 90 : 60;
            _color = _first ? Colors.blue : Colors.red;
            _first = !_first;
          });
        },
        tooltip: 'Toggle Text',
        child: Icon(Icons.flip),
      ),
    );
  }


}