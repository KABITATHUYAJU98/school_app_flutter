class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Social', 'Ethical Hacking', '17 Nov 2023', '20 Nov 2023', 'Pending'),
  AssignmentData(
      'Compiler', 'Language Trans', '23 Nov 2023', '25 Nov 2023', 'Submitted'),
  AssignmentData('BRM', 'Business Research', '17 Nov 2023', '20 Nov 2023',
      'Not Submitted'),
  AssignmentData(
      'AI', 'Introduction AI', '23 Nov 2023', '25 Nov 2023', 'Pending'),
];
