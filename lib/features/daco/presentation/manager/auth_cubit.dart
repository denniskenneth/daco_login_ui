import 'package:bloc/bloc.dart';
import 'package:daco_login/features/daco/data/repositories/auth.dart';
import 'package:daco_login/features/daco/domain/entities/account/account.dart';
import 'package:daco_login/features/daco/domain/repositories/auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  /// repository
  BaseAuthRepository repository = SpringbootAuthRepository();

  AuthCubit() : super(AuthInitial());

  Future<void> login({
    required String username,
    required String password,
  }) async {
    emit(AuthLoading());
    var either = await repository.login(username: username, password: password);
    either.fold(
      (l) => emit(AuthSuccess(l)),
      (r) => emit(AuthError(r)),
    );
  }

  Future<void> register({
    required String username,
    required String password,
  }) async {
    emit(AuthLoading());
    var either =
        await repository.register(username: username, password: password);
    either.fold(
      (l) => emit(AuthSuccess(l)),
      (r) => emit(AuthError(r)),
    );
  }

  Future<void> fetchAllAccounts() async {
    emit(AuthLoading());
    var either = await repository.accounts();
    either.fold(
      (l) => emit(AuthSuccess(l)),
      (r) => emit(AuthError(r)),
    );
  }

  Future<void> deleteAccount(Account account) async {
    emit(AuthLoading());
    var either = await repository.deleteAccount(account);
    either.fold(
      (l) => emit(AuthSuccess(l)),
      (r) => emit(AuthError(r)),
    );
  }
}
