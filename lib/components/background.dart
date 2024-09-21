

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_press_app/common/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String topImage,bottomImage;

  const Background({
      Key? key,
      required this.child,
      this.topImage = ImageUrl.topImageUrl,
      this.bottomImage = ImageUrl.bottomImageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // tránh cho on-screen keyboad đè lên content
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        // hộp trong suốt  != container (thiết lập được màu  , margin , padding)
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(topImage, width: 120),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(bottomImage, width: 120),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}


// class StackDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.centerRight,
//         children: <Widget>[
//           Container(
//             color: Colors.green,
//           ),
//           Container(
//             color: Colors.blue,
//             height: 300.0,
//             width: 300.0,
//           ),
//           Container(
//             color: Colors.pink,
//             height: 150.0,
//             width: 150.0,
//           )
//         ],
//       ),
//     );
//   }
// }