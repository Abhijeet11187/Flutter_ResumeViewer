import 'package:flutter/services.dart';

class FetchData{
  
  static final FetchData _singleton = FetchData._internal();


  factory FetchData(){
    return _singleton;
  }

  Future<dynamic>loadResumeFromAssets()async{
      // return await http.get('https://gist.github.com/Abhijeet11187/aa8711d640f2ac6485cfbc7f3d09b696'); 
      return await rootBundle.loadString('DummyData/resumeFormatted');
  }

  FetchData._internal();
}