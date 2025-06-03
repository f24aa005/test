import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: const Color(0xFFe91e63),
      
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static var _message = 'ok.';
    @override
    Widget build(BuildContext context) {
      return  Scaffold(
        appBar:  AppBar(
          title:  Text('App Name'),
          ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _message,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w400,
                  fontFamily:"Roboto",),
              ),
            

          Padding(
            padding:EdgeInsets.all(10.0) ,
            ),

            Padding(
              padding:EdgeInsets.all(10.0) ,
              child: ElevatedButton(
                onPressed:buttonPressed,
                child: Text(
                  "tap me!",
                  style: TextStyle(fontSize:32.0,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
                  )
              )
            ),
            ],
        ),
        ),
      );
    }

    void buttonPressed(){
      showDialog(
        context:context,
        builder: (BuildContext context) => AlertDialog(
          title: Text("Hello!"),
          content: Text("This is sample."),
          actions: <Widget>[
            TextButton(
              child:const Text('Cancel'),
              onPressed: () => Navigator.pop<String>(context, 'Cancel')
              ),
              TextButton(
                child: const Text('OK'),
                onPressed: () => Navigator.pop<String>(context, 'OK')
                )
          ],
        ),
      ).then<void>((value) => resultAlert(value));
    }

    void resultAlert(String value) {
      setState((){
        _message = 'selected: $value';
      });
    }
}