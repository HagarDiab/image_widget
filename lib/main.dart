import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              verticalDirection: VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.center,
              // caused an error
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                    child: Directionality(
                        //caused error
                        textDirection: TextDirection.ltr,
                        child: Image.network('https://picsum.photos/250?image=9'))),
                Expanded(
                    child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Image.network('https://urlzs.com/RsqCz'))),
              ],
            )));
  }
}
//Error: ADB exited with exit code 1
//Performing Streamed Install
//
//adb: failed to install D:\D\Android\Flutter\Projects\image_widget\build\app\outputs\apk\app.apk: Failure [INSTALL_FAILED_INSUFFICIENT_STORAGE]
//Error launching application on Android SDK built for x86.

//try : https://stackoverflow.com/questions/57000915/error-adb-exited-with-exit-code-1-performing-streamed-install
//but doesnot working