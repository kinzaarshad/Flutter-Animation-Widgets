import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class animatedSize extends StatefulWidget {
  @override
  _SizeState createState() => _SizeState();
}

class _SizeState extends State<animatedSize>  with SingleTickerProviderStateMixin{
  double _size = 110.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 320.0 : 190.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Container(
          color: Colors.blue,
          child: AnimatedSize(
            curve: Curves.easeIn,
            vsync: this,
            duration: const Duration(seconds: 1),
            child:Container(
              width:_size,
              height:_size,
              child: Center(
                child: Image(
                  image: AssetImage('assets/Camera.png'),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _updateSize();
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }


}