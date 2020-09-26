class EducationDetails {
  final String qualification;
  final String college;
  final String year;
  final String percentage;

  EducationDetails(
      {this.qualification, this.college, this.year, this.percentage});

  factory EducationDetails.fromJson(Map<String, dynamic> parsedJson) {
    return EducationDetails(
        qualification: parsedJson['qualification'],
        college: parsedJson['college'],
        year: parsedJson['year'],
        percentage: parsedJson['percentage']);
  }
}
