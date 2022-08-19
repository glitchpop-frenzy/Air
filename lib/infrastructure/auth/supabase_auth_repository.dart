import 'dart:async';

import 'package:air/config/global.dart';
import 'package:air/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:air/domain/auth/i_auth_repository.dart';
import 'package:get_it/get_it.dart';

@LazySingleton(as: IAuthRepository)
class SupabaseAuthRepository implements IAuthRepository, Disposable {
  // final SupabaseInstance supabase =
  @override
  Future<Either<AuthFailure, bool>> authenticate() async {
    final response = await SupabaseClient(
      Global.supabaseUrl!,
      Global.supabaseAnonKey!,
    ).auth.signInWithProvider(
          Provider.twitter,
          options: AuthOptions(
              redirectTo: kIsWeb
                  ? null
                  : '${Global.redirectUrl}://${Global.loginCallback}/'),
        );
    // ignore: avoid_print
    print(response);
    if (!response) {
      return left(const AuthFailure.authenticationFailure());
    } else {
      return right(response);
    }
  }

  @override
  FutureOr onDispose() {
    throw UnimplementedError();
  }
}
