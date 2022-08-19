import 'package:air/domain/auth/i_auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  AuthBloc(this.authRepository) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      event.map(
          authenticate: (_) async {
            emit(const _Loading());
            final response = await authRepository.authenticate();
          },
          unauthenticate: (_) {});
    });
  }
}
