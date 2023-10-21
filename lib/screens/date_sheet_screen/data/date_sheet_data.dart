class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(
      this.date, this.monthName, this.subjectName, this.dayName, this.time);
}

List<DataSheet> dateSheet = [
  DataSheet(11, 'JAN', 'Computer Science', 'Monday', '9:00am'),
  DataSheet(12, 'JAN', 'Intelligence', 'Tuesday', '9:00am'),
  DataSheet(13, 'JAN', 'Artificial', 'Wednesday', '9:00am'),
  DataSheet(14, 'JAN', 'Mathematics', 'Thursday', '9:00am'),
  DataSheet(15, 'JAN', 'Computer Network', 'Friday', '9:00am'),
  DataSheet(16, 'JAN', 'Digital Logic', 'Sunday', '9:00am'),
];
