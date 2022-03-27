import 'package:afroz_boilerplate/app/functions.dart';
import 'package:afroz_boilerplate/data/network/failure.dart';
import 'package:afroz_boilerplate/data/request/request.dart';
import 'package:afroz_boilerplate/domain/model/model.dart';
import 'package:afroz_boilerplate/domain/repository/repository.dart';
import 'package:afroz_boilerplate/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Authentication> {
  final Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUseCaseInput input) async {
    DeviceInfo deviceInfo = await getDeviceDetails();
    return await _repository.login(LoginRequest(
        input.email, input.password, deviceInfo.identifier, deviceInfo.name));
  }
}

class LoginUseCaseInput {
  String email;
  String password;

  LoginUseCaseInput(this.email, this.password);
}
