import 'package:to_do_app/models/task.dart';

class TaskRepository {
  static List<Task> tasks = [
    Task(
        id: 1,
        title: "Run system tests",
        subtitle: "This is task 1",
        dateRange: "3 October - 7 October",
        status: Status.progress),
    Task(
        id: 2,
        title: "Update website content",
        subtitle: "This is task 2",
        dateRange: '19 February - 21 February',
        status: Status.testing),
    Task(
        id: 3,
        title: "Implement new feature",
        subtitle: "This is task 3",
        dateRange: "29 March - 2 September",
        status: Status.progress),
    Task(
        id: 4,
        title: "Fix bug in login feature",
        subtitle: "This is task 4",
        dateRange: "23 June - 27 June",
        status: Status.done),
    Task(
        id: 5,
        title: "Design user interface",
        subtitle: "This is task 5",
        dateRange: "23 April - 26 April",
        status: Status.todo),
    Task(
        id: 6,
        title: "Run system tests",
        subtitle: "This is task 6",
        dateRange: '8 October - 12 October',
        status: Status.testing),
    Task(
        id: 7,
        title: "Review test cases",
        subtitle: "This is task 7",
        dateRange: '8 February - 9 February',
        status: Status.progress),
    Task(
        id: 8,
        title: "Update website content",
        subtitle: "This is task 8",
        dateRange: '30 June - 3 September',
        status: Status.progress),
    Task(
        id: 9,
        title: "Review test cases",
        subtitle: "This is task 9",
        dateRange: '21 August - 25 August',
        status: Status.done),
    Task(
        id: 10,
        title: "Implement new feature",
        subtitle: "This is task 10",
        dateRange: '25 November - 28 November',
        status: Status.testing),
  ];

  static Task? findTaskById(int id) {
    for (Task task in tasks) {
      if (task.id == id) {
        return task;
      }
    }
    return null;
  }

  static List<Task> findTasksByTitle(String title) {
    List<Task> matchingTasks = [];
    for (Task task in tasks) {
      if (task.title == title) {
        matchingTasks.add(task);
      }
    }
    return matchingTasks;
  }

  static List<Task> filterTasksByCategory(Status category) {
    return tasks.where((task) => task.status == category).toList();
  }
}
