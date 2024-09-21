/*
Key : preserve state when widget move around in widget tree .
3 answers :
  - When you need key
  - where put them in widget tree
  - which is right for you
 */

import 'package:flutter/material.dart';
import 'dart:math' as math;
class PositionedKey extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedKeyState();
}
class PositionedKeyState extends State<PositionedKey> {
  late List<Widget> tiles;

  @override
  void initState() {
    super.initState();
    tiles = [
      // StatelessColorful(),
      // StatelessColorful(),
      StatefullColorful(key: UniqueKey()),
      StatefullColorful(key : UniqueKey())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: tiles))),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.sentiment_very_satisfied), onPressed: swapTiles));
  }

  void swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}
// todo : if childs is stateless  -> key is ok
// class StatelessColorful extends StatelessWidget {
//   final Color color = UniqueColorGenaretor.getColor();
//   StatelessColorful({super.key});
//   @override
//   Widget build(BuildContext context) => buildColorful(color);
//
//   Widget buildColorful(Color color){
//     return SizedBox(
//       child: Container(
//         color: color,
//       ),
//       height: 100,
//       width: 100,
//     );
//   }
// }
class StatefullColorful extends StatefulWidget {
  const StatefullColorful({required super.key});
  @override
  State<StatefulWidget> createState() {
    return _StateFullColorfullState();
  }

}

class _StateFullColorfullState extends State<StatefullColorful> {
  Color color = UniqueColorGenaretor.getColor();

  @override
  Widget build(BuildContext context) => buildColorful(color);

  Widget buildColorful(Color color) {
    return SizedBox(
      child: Container(
        color: color,
      ),
      height: 100,
      width: 100,
    );
  }
}

class UniqueColorGenaretor {
  static Color getColor(){
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}