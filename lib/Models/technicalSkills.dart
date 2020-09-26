class TechnicalSkills{
  final List<String>programmingLanguages;
  final String githubLink;

  TechnicalSkills({
    this.programmingLanguages,
    this.githubLink
  });

factory TechnicalSkills.fromJson(Map<String,dynamic> parsedJson){
  return TechnicalSkills(
    programmingLanguages: parsedprogrammingLanguages(parsedJson['programmingLanguages']),
    githubLink: parsedJson['githubLink']
  );
}

static List<String> parsedprogrammingLanguages(languages){
List<String> languagesList= new List<String>.from(languages);
return languagesList;
}
}