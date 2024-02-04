import 'package:dartz/dartz.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:learn_with_me/core/errors/failures.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/to_do_feature/models/repository/to_do_repo.dart';
import 'package:learn_with_me/features/to_do_feature/models/to_do_model.dart';

class ToDoRepoImpl extends ToDorepo {
  @override
  Future<Either<Failure, void>> AddToDoMethod(ToDoModel todo) async {
    try {
      var ToDoBox = Hive.box<ToDoModel>(KToDoBox);
      await ToDoBox.add(todo);
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
