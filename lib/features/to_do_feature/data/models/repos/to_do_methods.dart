import 'package:dartz/dartz.dart';
import 'package:learn_with_me/core/errors/failures.dart';
import 'package:learn_with_me/features/to_do_feature/data/models/to_do_model.dart';

abstract class ToDoRepo {
  Future<Either<Failure, void>> AddToDoMethod(ToDoModel ToDo);
}
