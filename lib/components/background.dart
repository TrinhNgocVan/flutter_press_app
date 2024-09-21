

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
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 120,
              ),
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