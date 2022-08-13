import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class animatedContainer extends StatefulWidget {
  @override
  _ContainerState createState() => _ContainerState();
}

class _ContainerState extends State<animatedContainer>  with SingleTickerProviderStateMixin{
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
      child: AnimatedContainer(
      width: selected ? 400.0 : 200.0,
      height: selected ? 200.0 : 400.0,
      color: selected ? Colors.red : Colors.blue,
      alignment:
      selected ? Alignment.center : AlignmentDirectional.topCenter,
        duration: Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
        child:Container(
          width:75,
          height:75,
          child: Center(
            child: Image(
              image: AssetImage('assets/Camera.png'),
      ),
          ),
        ),
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