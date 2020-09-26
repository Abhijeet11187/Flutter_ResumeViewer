import 'package:assignment/Models/resume.dart';
import 'package:flutter/material.dart';

class ResumeBuilder extends StatelessWidget {
  Resume resume;
  ResumeBuilder(this.resume);

  Widget _getResumeField(fieldName) {
    return Expanded(
        flex: 3,
        child: Text(
          fieldName,
          style: _getStyle('field'),
        ));
  }

  _getStyle(styleDecider) {
    return styleDecider == "field"
        ? TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
        : TextStyle(fontSize: 17);
  }

  Widget _getSingleRow(fieldName, value) {
    return Row(
      children: [
        _getResumeField(fieldName),
        Expanded(
            flex: 7,
            child: Text(
              value,
              style: _getStyle(''),
            )),
      ],
    );
  }

  _educationalDetails(data, hideDivider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Qualification    ",
              style: _getStyle(''),
            ),
            Text(data.qualification)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "College   ",
              style: _getStyle(''),
            ),
            Text(data.college),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Year   ",
              style: _getStyle(''),
            ),
            Text(data.year),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Percentage   ",
              style: _getStyle(''),
            ),
            Text(data.percentage),
          ],
        ),
        hideDivider ? Container() : _getDivider()
      ],
    );
  }

  List<Widget> educationDetailList() {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < resume.educationalDetails.length; i++) {
      list.add(_educationalDetails(resume.educationalDetails[i],
          (resume.educationalDetails.length - 1) == i));
    }
    return list;
  }

  Widget _educationalDetailsRow() {
    return Row(
      children: [
        _getResumeField('Educational Details'),
        Expanded(
            flex: 7,
            child: Column(
              children: educationDetailList(),
            )),
      ],
    );
  }

  List<Widget> _getlistOfLanguages() {
    List<Widget> list = new List<Widget>();
    for (var i = 0;
        i < resume.technicalSkills.programmingLanguages.length;
        i++) {
      list.add(Text(resume.technicalSkills.programmingLanguages[i],
          ));
    }
    return list;
  }

  Widget _technicalSkillsRow() {
    return Row(
      children: [
        _getResumeField('Technical Skills'),
        Expanded(
            flex: 7,
            child: Column(children: [
              Text(
                "Programming languages ",
                style: _getStyle(''),
              ),
              ..._getlistOfLanguages(),
            _getDivider(),
              Text(
                "Github Link ",
                style: _getStyle(''),
              ),
              Text(
                resume.technicalSkills.githubLink,
              ),
            ])),
      ],
    );
  }

  Widget _getDivider() {
    return Divider(
      thickness: 1,
      color: Colors.black,
    );
  }

  Widget _workExperienceRow() {
    return Row(
      children: [
        _getResumeField('WorkExperience'),
        Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Company Name",
                  style: _getStyle(''),
                ),
                Text(resume.workExperience.companyName),
                Text(
                  "Profile",
                  style: _getStyle(''),
                ),
                Text(resume.workExperience.profile),
                Text(
                  "Duration",
                  style: _getStyle(''),
                ),
                Text(resume.workExperience.duration),
                Text(
                  "Note",
                  style: _getStyle(''),
                ),
                Text(resume.workExperience.note),
              ],
            )),
      ],
    );
  }

  _getProjectInfo(project, hideDivider) {
    return Column(
      children: [
        Text(
          "Project Name",
          style: _getStyle(''),
        ),
        Text(project.projectName),
        Text("Language Used", style: _getStyle('')),
        Text(project.languageUsed),
        Text("Description", style: _getStyle('')),
        Text(project.description),
        hideDivider ? Container() : _getDivider(),
      ],
    );
  }

  List<Widget> _getProjectList() {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < resume.projects.length; i++) {
      list.add(_getProjectInfo(
          resume.projects[i], (resume.projects.length - 1) == i));
    }
    return list;
  }

  Widget _projectsRow() {
    return Row(
      children: [
        _getResumeField("Projects"),
        Expanded(
            flex: 7,
            child: Column(
              children: _getProjectList(),
            ))
      ],
    );
  }

  List<Widget> _getPersonalSkillsList() {
    List<Widget> list = new List<Widget>();
    list.add(Text(
      "Hobbies",
      style: _getStyle(''),
    ));
    for (var i = 0; i < resume.personalSkills.hobbies.length; i++) {
      list.add(Text(resume.personalSkills.hobbies[i]));
    }
    list.add(_getDivider());

    list.add(Text(
      "Strengths",
      style: _getStyle(''),
    ));
    for (var i = 0; i < resume.personalSkills.strengths.length; i++) {
      list.add(Text(resume.personalSkills.strengths[i]));
    }
    return list;
  }

  Widget _personalSkillsRow() {
    return Row(
      children: [
        _getResumeField("Personal Skills"),
        Expanded(
            flex: 7,
            child: Column(
              children: _getPersonalSkillsList(),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 10,
            ),
            _getSingleRow('Name', resume.name),
            _getDivider(),
            _getSingleRow('Email ID', resume.emailId),
            _getDivider(),
            _getSingleRow('Mobile No', resume.mobileNo),
            _getDivider(),
            _getSingleRow('Career Objective', resume.careerObjective),
            _getDivider(),
            _educationalDetailsRow(),
            _getDivider(),
            _technicalSkillsRow(),
            _getDivider(),
            _getSingleRow('Certification', resume.certification),
            _getDivider(),
            _workExperienceRow(),
            _getDivider(),
            _projectsRow(),
            _getDivider(),
            _personalSkillsRow(),
            _getDivider(),
            _getSingleRow('Declaration', resume.declaration),
            _getDivider(),
            _getSingleRow('Place', resume.place),
            _getDivider(),
            _getSingleRow('Date', resume.date),
            _getDivider(),
          ]),
    );
  }
}
