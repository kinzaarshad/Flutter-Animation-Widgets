import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class animatedPositioned extends StatefulWidget {
  @override
  _PositionedState createState() => _PositionedState();
}

class _PositionedState extends State<animatedPositioned>  with SingleTickerProviderStateMixin{
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: 200,
        height: 350,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: selected ? 400.0 : 100.0,
              height: selected ? 100.0 : 400.0,
              top: selected ? 50.0 : 400.0,
              left: selected? 100: 50,
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Container(
                color: Colors.white,
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
            selected = !selected;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }


}

