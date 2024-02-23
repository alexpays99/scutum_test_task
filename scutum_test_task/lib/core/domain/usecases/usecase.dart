import 'package:dartz/dartz.dart';

import '../entities/failure.dart';

abstract class UseCase<Type, Params, Params1> {
  Future<Either<Failure, Type>> call(Params params, Params1 params1);
}

class NoParams {}
