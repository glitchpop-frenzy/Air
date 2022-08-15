import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_success.freezed.dart';

@freezed
class AuthSuccess with _$AuthSuccess {
  const factory AuthSuccess.authenticated() = Authenticated;
}
