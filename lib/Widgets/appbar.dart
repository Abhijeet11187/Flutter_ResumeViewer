
import 'package:flutter/material.dart';

AppBar appBarWithnName(BuildContext context){
  AppBar appBar=AppBar(
    leading: Icon(Icons.assignment_ind),
    backgroundColor: Colors.black,
    title: Text("Resume Viewer"),
    titleSpacing: 2,
  );
  return appBar;
}