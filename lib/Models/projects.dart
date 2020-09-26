class Project{
  final String projectName;
  final String languageUsed;
  final String description;

  Project({
    this.projectName,
    this.languageUsed,
    this.description
  });

  factory Project.fromJson(Map<String,dynamic>parsedJson){
    return Project(
      projectName: parsedJson['projectName'],
      languageUsed: parsedJson['languageUsed'],
      description: parsedJson['description']
    );
  }
}