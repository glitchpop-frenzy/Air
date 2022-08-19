import 'package:air/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, bool>> authenticate();
}
