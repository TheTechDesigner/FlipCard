import 'package:flip_card/flip_card.dart';
import 'package:flip_card_example/images.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Flip Card';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Card(
        elevation: 0.0, // check back side effect
        margin: EdgeInsets.only(
          top: 96.0,
          bottom: 96.0,
          left: 38.0,
          right: 38.0,
        ),
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          speed: 500,
          onFlipDone: (_status) {
            print(_status);
          },
          front: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFC41A3B),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'The Tech Designer',
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Color(0xFFFBE0E6),
                    ),
                  ),
                ),
                Text(
                  'Click here to flip back',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF1B1F32),
                  ),
                ),
              ],
            ),
          ),
          back: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFC41A3B),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image(
                    image: AssetImage(logo), //transparent logo
                  ),
                ),
                Text(
                  'Click here to flip front',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF1B1F32),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
