import 'package:afroz_boilerplate/data/network/failure.dart';
import 'package:afroz_boilerplate/domain/repository/repository.dart';
import 'package:afroz_boilerplate/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class ForgotPasswordUseCase implements BaseUseCase<String, String> {
  final Repository _repository;

  ForgotPasswordUseCase(this._repository);

  @override
  Future<Either<Failure, String>> execute(String input) async {
    return await _repository.forgotPassword(input);
  }
}
