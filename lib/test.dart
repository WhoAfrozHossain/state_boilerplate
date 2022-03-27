import 'package:afroz_boilerplate/app/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  void updateAppState() {
    MyApp.instance.appState = 10;
  }

  void getAppState() {
    if (kDebugMode) {
      print(MyApp.instance.appState);
    } // 10
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
