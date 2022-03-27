import 'package:afroz_boilerplate/data/network/failure.dart';
import 'package:afroz_boilerplate/domain/model/model.dart';
import 'package:afroz_boilerplate/domain/repository/repository.dart';
import 'package:afroz_boilerplate/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class HomeUseCase extends BaseUseCase<void, HomeObject> {
  final Repository _repository;

  HomeUseCase(this._repository);

  @override
  Future<Either<Failure, HomeObject>> execute(void input) async {
    return await _repository.getHome();
  }
}
