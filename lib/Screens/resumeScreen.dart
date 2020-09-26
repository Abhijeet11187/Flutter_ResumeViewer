import 'package:assignment/Services/fetchdata.dart';
import 'package:assignment/Widgets/resumeBuilder.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:assignment/Models/resume.dart';

class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  FetchData _instance;
  Resume resume;

  initState() {
    super.initState();
    _instance = FetchData();
    _loadJsonData();
  }

  _loadJsonData() async {
    dynamic jsonString = await _instance.loadResumeFromAssets();
    final jsonRespose = await json.decode(jsonString);
    resume = Resume.fromJson(jsonRespose);
    return resume;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadJsonData(),
      builder:(context,snapshot){
        return snapshot.hasData ?
        ResumeBuilder(snapshot.data):
        Center(child: Text("Loading Data..."),);
      }
    );
  }
}
