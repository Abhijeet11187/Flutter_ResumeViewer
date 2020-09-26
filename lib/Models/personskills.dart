class PersonalSkills{
final List<String> strengths;
final List<String> hobbies;

PersonalSkills({
this.strengths,
this.hobbies
});

factory PersonalSkills.fromJson(Map<String,dynamic>parsedJson){
  return PersonalSkills(
    strengths: parsedStrengths(parsedJson['strengths']),
    hobbies: parsedHobbies(parsedJson['hobbies'])
  );
}

static List<String> parsedStrengths(strength){
List<String> strengthList= new List<String>.from(strength);
return strengthList;
}
static List<String>parsedHobbies(hobbies){
  List<String> hobbiesList=new List<String>.from(hobbies);
  return hobbiesList;
}

}