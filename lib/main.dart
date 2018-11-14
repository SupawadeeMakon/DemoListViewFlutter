import 'package:flutter/material.dart'; //ทำการ import material.dart

void main() {
  runApp(MyApp());
}

//การสร้งแบบเต็มรูปแบบทำหน้าสองหน้า ให้พิมพ์ stf
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyAppState();
  } //ให้ตั้งชื่อเป็น MyApp เสมอ

}

class _MyAppState extends State<MyApp> {
  var titleString = 'Basic ListView';
  var imageString = [
    'images/school1.png',
    'images/school2.png',
    'images/school3.png',
    'images/school4.png',
    'images/school5.png'
  ];

  @override
  Widget build(BuildContext context) {
    Text titleText = new Text(titleString);

    return new MaterialApp(
      title: titleString,
      home: new Scaffold(
          appBar: new AppBar(
            title: titleText,
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset(imageString[0]),
              new Image.asset(imageString[1]),
              new Image.asset(imageString[2]),
              new Image.asset(imageString[3]),
              new Image.asset(imageString[4])
            ],
          )),
    );
  }
}
