import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animatedCrossfade extends StatefulWidget {
  @override
  _CrossfadeState createState() => _CrossfadeState();
}

class _CrossfadeState extends State<animatedCrossfade>  with SingleTickerProviderStateMixin{
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;
  bool _first=true;
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      setState(() {
        _crossFadeState = CrossFadeState.showSecond;
      });
    });
    Future.delayed(
        const Duration(
          seconds: 5,
        ), () {
      setState(() {
        _crossFadeState = CrossFadeState.showFirst;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedCrossFade(
        duration: const Duration(seconds: 2,),
        reverseDuration: const Duration(seconds: 3,),
        firstCurve: Curves.bounceInOut,
        secondCurve: Curves.easeInBack,
        firstChild: Image(image: AssetImage('assets/Table.png'), fit: BoxFit.cover,),
        secondChild: Image(image: AssetImage('assets/Camera.png'), fit: BoxFit.cover,),
        crossFadeState: _crossFadeState,
        layoutBuilder: (
             Widget topChild,
             Key topChildKey,
             Widget bottomChild,
             Key bottomChildKey,
             ) {
           return Stack(
            overflow: Overflow.visible,
             children: <Widget>[
               Positioned(
                 key: bottomChildKey,
                 left: 100.0,
                 top: 100.0,
                 child: bottomChild,
               ),
               Positioned(
                 key: topChildKey,
                 child: topChild,
               ),
             ],
           );
        },
      ),
    );
  }



}
