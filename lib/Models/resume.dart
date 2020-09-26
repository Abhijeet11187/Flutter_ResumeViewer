import 'dart:core';

import 'package:assignment/Models/educationalDetails.dart';
import 'package:assignment/Models/personskills.dart';
import 'package:assignment/Models/projects.dart';
import 'package:assignment/Models/technicalSkills.dart';
import 'package:assignment/Models/workExperience.dart';

class Resume {
  final String name;
  final String emailId;
  final String mobileNo;
  final String careerObjective;
  final List<Project>projects;
  final WorkExperience workExperience;
  final TechnicalSkills technicalSkills;
  final List<EducationDetails> educationalDetails;
  final String certification;
  final PersonalSkills personalSkills; 
  final String declaration;
  final String place;
  final String date;

  Resume({
    this.name,
    this.emailId,
    this.mobileNo,
    this.careerObjective,
    this.projects,
    this.workExperience,
    this.technicalSkills,
    this.educationalDetails,
    this.certification,
    this.personalSkills,
    this.declaration,
    this.place,
    this.date
  });

  factory Resume.fromJson(Map<String,dynamic> json){
    return Resume(
     name: json['name'],
     emailId : json['emailId'],
     mobileNo : json['mobileNo'],
     careerObjective:  json['careerObjective'],
     projects: parseProjects(json),
     workExperience:WorkExperience.fromJson(json['workExperience']),
     technicalSkills: TechnicalSkills.fromJson(json['technicalSkills']),
     educationalDetails:parseEducationDetails(json),
     certification: json['certification'],
     personalSkills: PersonalSkills.fromJson(json['personalSkills']),
     declaration: json['declaration'],
     place: json['place'],
     date: json['date']
    );
  }

  static List<Project>parseProjects(projectJson){
    var list= projectJson['projects'] as List;
    List<Project> projectList=list.map((data) => Project.fromJson(data)).toList();
    return projectList;
  }
  static List<EducationDetails>parseEducationDetails(jsonParse){
    var list=jsonParse['educationalDetails'] as List;
    List<EducationDetails> educationDeatilsList=list.map((data) => EducationDetails.fromJson(data)).toList();
    return educationDeatilsList ;
  }
}