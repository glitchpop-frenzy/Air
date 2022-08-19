import 'package:air/domain/auth/auth_failure.dart';
import 'package:air/domain/auth/auth_success.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, AuthSuccess>> authenticate();
}
