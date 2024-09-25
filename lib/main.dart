import 'package:flutter/material.dart';
import 'package:flutter_press_app/form_global_key.dart';
import 'package:flutter_press_app/lab/keys/lab1.dart';
import 'package:flutter_press_app/screens/login/login_screen.dart';


import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'dart:math' as math;
// key , db with sqllite


void main(){
  runApp(MaterialApp(
    // home: PositionCellPage() ,
    title: 'Form Global key Demo',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Form Global key Demo'),
      ),
      body: LoginScreen(),
    )
  ));
}

class PositionCellPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PositionState();
  }
}
class PositionState extends State<PositionCellPage>{
  late List<Widget> tiles ; // state
  @override
  void initState(){
    super.initState();
    // set tiles state
    // tiles = [
    //   StatelessColorBox(),
    //   StatelessColorBox()
    // ];
    tiles = [
      StatelfullColorBox(key  : ValueKey(1)),
      StatelessColorBox(key  : ValueKey(2))
    ];

    /*
    unique key  vs value key
    object key  : luu value phuc tap
    global key  : dung khi muon lay state cua component o bat cu dau
     */
  }
  @override
  Widget build(BuildContext context) {
    print('Component parent re-render');
    return Scaffold(
      body: SafeArea(child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tiles,
        ),

      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.change_circle),
          onPressed: swapColor
      ),
    );
  }

  void swapColor(){
    setState(() {
      // Widget firstIem  = tiles.removeAt(0);
      // tiles.insert(1, firstIem);
      tiles.insert(1,tiles.removeAt(0));
    });
  }
}
/*
key  : value , object , unique , global
 */
class StatelessColorBox extends StatelessWidget{
  final Color boxColor  = ColorRandom.random();
  StatelessColorBox({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Container(
        color:  boxColor,
      ),
    );
  }
}
class  StatelfullColorBox extends StatefulWidget {
  StatelfullColorBox({required super.key});
  @override
  State<StatefulWidget> createState() {
    return _StateColorBox();
  }

}
class _StateColorBox extends State<StatelfullColorBox>{
  final Color boxColor  = ColorRandom.random();
  @override
  Widget build(BuildContext context) {
    print('Child component re-render');
    return SizedBox(
      height: 100,
      width: 100,
      child: Container(
        color:  boxColor,
      ),
    );
  }
}


class ColorRandom {
  static Color random(){
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}













