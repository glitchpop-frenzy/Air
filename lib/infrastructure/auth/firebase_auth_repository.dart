import 'dart:async';

import 'package:air/domain/auth/auth_failure.dart';
import 'package:air/domain/auth/auth_success.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:air/domain/auth/i_auth_repository.dart';
import 'package:get_it/get_it.dart';

@LazySingleton(as: IAuthRepository)
class FirebaseAuthRepository implements IAuthRepository, Disposable {
  // final SupabaseInstance supabase =
  @override
  Future<Either<AuthFailure, AuthSuccess>> authenticate() async {
    final twitterAuthProvider = TwitterAuthProvider();
    final UserCredential userCreds =
        await FirebaseAuth.instance.signInWithAuthProvider(twitterAuthProvider);

    if (userCreds == null) {
      return left(const AuthFailure.authenticationFailure());
    } else {
      return right(AuthSuccess.authenticated(userCreds));
    }
  }

  @override
  FutureOr onDispose() {
    throw UnimplementedError();
  }
}
