import 'package:assignment/Screens/resumeScreen.dart';
import 'package:assignment/Widgets/appbar.dart';
import 'package:flutter/material.dart';

  // const dummyJSON="https://gist.github.com/Abhijeet11187/aa8711d640f2ac6485cfbc7f3d09b696";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Viewer',
      theme: ThemeData(      
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Resume Viewer'),
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
  


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: appBarWithnName(context),
      body: ResumeScreen() 
    );
  }
}
