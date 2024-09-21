import 'package:flutter/material.dart';
import 'package:flutter_press_app/components/background.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      // note SingleChildScrollView : chua 1 child duy nhat
      // , cho phep cuong theo chieu ngang chieu doc
      // https://viblo.asia/p/hoc-lap-trinh-flutter-phan-3tiep-theo-E1XVOXrE4Mz
        child: SingleChildScrollView(
          child: Center(
            child: Text('Dashboard' , style: TextStyle(fontSize: 50),),
          ),
        )
    );
  }
}