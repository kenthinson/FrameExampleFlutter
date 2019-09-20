import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: _counter,
                  child: Stack(
            children: <Widget>[
              Container(
                color: Colors.black87,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                  color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                    color: Colors.black54,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: 
                      Container(child: 
                      Image.asset('assets/tj.jpg'),
                      decoration: BoxDecoration(
                           border: Border.all(
                          color: Colors.white,
                          width: 1.0
                      )
                      ),
                      ),
                    ),
                  ),
                            ),
                ),
                        ),
              ),
              Positioned(child: Container(width: 30, height: 30, child: CustomPaint(foregroundPainter: TopLeftToBottomRight(),),)),
              Positioned(child: Container(width: 30, height: 30, child: CustomPaint(foregroundPainter: BottomLeftToTopRight(),),), left: 0, bottom: 0,),
              Positioned(child: Container(width: 30, height: 30, child: CustomPaint(foregroundPainter: BottomLeftToTopRight(),),), right: 0,),
              Positioned(child: Container(width: 30, height: 30, child: CustomPaint(foregroundPainter: TopLeftToBottomRight(),),), bottom: 0, right: 0,),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}

class TopLeftToBottomRight extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset.zero, Offset(30, 30), Paint()..color = Colors.white);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class BottomLeftToTopRight extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(30,0), Offset(0, 30), Paint()..color = Colors.white);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}