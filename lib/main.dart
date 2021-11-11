import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  bool _aaa = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text('appbar',
        style: TextStyle(
          color: Colors.black54,
        ),
        ),
        leading: NeumorphicRadio(
          child: Center(
            child: Text('←',
            style: TextStyle(
              fontSize: 23,
              color: Colors.black54,
            ),
            ),
          ),
          style: NeumorphicRadioStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50),
            ),
          ),
        ),
        actions: [
          NeumorphicRadio(
            child: Icon(Icons.settings,color: Colors.black54,),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: NeumorphicBackground(
          child: Column(
            children: [
              Neumorphic(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: -10,
                    lightSource: LightSource.topLeft,
                  ),
                child:
                NeumorphicText('Flutter大学',
                  textStyle: NeumorphicTextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 70,
                  ),
                  ),
          ),
              const SizedBox(height:10),
              NeumorphicButton(
                child: Text('▶︎',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                  ),
                ),
                onPressed: (){},
              ),
            ],
          ),
          ),
        ),
    );
  }
}