import 'package:dartz/dartz.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:learn_with_me/core/errors/failures.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/repos/to_do_methods.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';

class TodoImpl extends ToDoRepo {
  @override
  Future<Either<Failure, void>> AddToDoMethod(ToDoModel ToDo) async {
    try {
      var ToDoBox = Hive.box<ToDoModel>(KToDoBox);

      await ToDoBox.add(ToDo);

      return right(null);
    } catch (e) {
      return left(
        HiveFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
