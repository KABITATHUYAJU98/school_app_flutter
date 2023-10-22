class ResultData {
  final String subjectName;
  final int totalMarks;
  final int obtainedMarks;
  final String grade;

  ResultData(
    this.subjectName,
    this.totalMarks,
    this.obtainedMarks,
    this.grade,
  );
}

List<ResultData> result = [
  ResultData('English', 100, 98, 'A'),
  ResultData('AI', 100, 85, 'A'),
  ResultData('Computer Science', 100, 50, 'D'),
  ResultData('Compiler', 100, 89, 'A'),
  ResultData('Drawing', 100, 80, 'A'),
  ResultData('Data Science', 100, 70, 'B+'),
  ResultData('Digital Logic', 100, 95, 'A'),
];
