class Task {
  int id; // New field
  String title;
  String subtitle;
  String dateRange;
  Status status;

  Task({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.dateRange,
    required this.status,
  });
}

enum Status {
  todo,
  progress,
  testing,
  done,
}
