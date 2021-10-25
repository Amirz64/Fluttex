// ignore_for_file: prefer_const_constructors, avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:fluttex/fluttex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'SecondPage': (BuildContext context) => SecondPage(),
      },
      home: const MySecondPagePage(title: 'Fluttex Example'),
    );
  }
}

class MySecondPagePage extends StatefulWidget {
  const MySecondPagePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySecondPagePage> createState() => _MySecondPagePageState();
}

class _MySecondPagePageState extends State<MySecondPagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Button(
              text: 'Push to another page',
              onPressed: (){
                go(context, SecondPage());
                //or 
                // go(context, 'SecondPage');
              },
            ),
            Button(
              text: 'Push replacement',
              onPressed: (){
                goReplace(context, SecondPage());
                //or
                // goReplace(context, 'SecondPage');
              },
            ),
            Button(
              text: 'Push and remove until',
              onPressed: (){
                goRemove(context, SecondPage());
                //or 
                // goRemove(context, 'SecondPage');

              },
            ),
            Button(
              text: 'Simple snack bar',
              onPressed: (){
                snackBar(context: context, onActionPressed: (){});
              },
            ),
               Button(
              text: 'Simple material banner',
              onPressed: (){
                materialBanner(context: context);
              },
            ),
                Button(
              text: 'Simple modal bottom sheet',
              onPressed: (){
                modalBottomSheet(context: context);
              },
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Button extends StatelessWidget {
   Button({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  String? text;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
        width: 300,
        height: 60,
        decoration: BoxDecoration(),
        child: MaterialButton(
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          onPressed: onPressed,
          color: Colors.teal,
          child: Text(text ?? '',style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),),
        ));
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
        centerTitle: true,
      ),
    );
  }
}
