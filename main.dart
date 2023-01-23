import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        slideIconWidget: Icon(
          Icons.arrow_back_ios,
          size: 30,
        ),
        waveType: WaveType.circularReveal,
        enableLoop: false,
        positionSlideIcon: 0.2,
        enableSideReveal: true,
      ),
    );
  }

  final pages = [
    Container(
        height: 800,
        width: double.infinity,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdLa63SbKhVhdV1FOPTCsEai9goFzYourDzg&usqp=CAU"),
          Padding(
            padding: EdgeInsets.only(bottom: 20, top: 30),
            child: Text(
              "Book your cab Within few seconds!",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ])),
    Container(
        height: 800,
        width: 520,
        color: Colors.yellow,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFxsTv0qf2s3GWbv9vAs5Fd3imuw3RIc8xvQ&usqp=CAU"),
          Padding(
            padding: EdgeInsets.only(bottom: 20, top: 30),
            child: Text(
              "Locate your cab with just few clicks",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ])),
    Container(
      height: 800,
      width: 520,
      color: Colors.purple,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk84qoQeCD5jlxEJB0GPO2f8P3oy0v_zN3jw&usqp=CAU"),
        Padding(
          padding: EdgeInsets.only(bottom: 20, top: 30),
          child: Text(
            "Your saftey is our priority",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    ),
  ];
}
