

import 'package:flutter/cupertino.dart';
import 'package:flutter_press_app/components/background.dart';
import 'package:flutter_press_app/components/login_form.dart';
import 'package:flutter_press_app/components/login_screen_top_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      // note SingleChildScrollView : chua 1 child duy nhat
      // , cho phep cuong theo chieu ngang chieu doc
      // https://viblo.asia/p/hoc-lap-trinh-flutter-phan-3tiep-theo-E1XVOXrE4Mz
        child: SingleChildScrollView(
          child: MobileLoginScreen(),
        )
    );
  }
}
class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginScreenTopImage(),
        Row(
          children: [
            Spacer(), // khoang trong co the dieu chinh duoc
            Expanded( // giup mo rong khong gian cua widget con
              flex: 8, // ty le phan bo khong gian
              child: LoginForm(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}