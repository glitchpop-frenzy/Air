import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:air/domain/auth/i_auth_repository.dart';
import 'package:get_it/get_it.dart';

@LazySingleton(as: IAuthRepository)
class SupabaseAuthRepository implements IAuthRepository, Disposable {
  @override
  void authenticate() {}

  @override
  FutureOr onDispose() {
    throw UnimplementedError();
  }
}
