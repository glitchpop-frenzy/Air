part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticate() = _Authenticate;
  const factory AuthEvent.unauthenticate() = _UnAuthenticate;
}
