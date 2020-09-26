class WorkExperience{
final String companyName;
final String profile;
final String duration;
final String note;

WorkExperience({
  this.companyName,
  this.profile,
  this.duration,
  this.note
});
 
 factory WorkExperience.fromJson(Map<String,dynamic>parseJson){
   return WorkExperience(
     companyName: parseJson['companyName'],
     profile: parseJson['profile'],
     duration:parseJson['Duration'],
     note: parseJson['Note']
   );
 }

}