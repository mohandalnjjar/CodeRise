class ToDoModel {
  final String title;
  bool isDone;

  ToDoModel({this.isDone = false, required this.title});
  void isDoneMethod() {
    isDone = !isDone;
  }
}
