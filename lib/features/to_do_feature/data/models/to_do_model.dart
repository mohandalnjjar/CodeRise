import 'package:hive/hive.dart';
part 'to_do_model.g.dart';
@HiveType(typeId: 0)
class ToDoModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  bool isDone;

  ToDoModel({this.isDone = false, required this.title});

  @HiveField(2)
  void isDoneMethod() {
    isDone = !isDone;
  }
}
