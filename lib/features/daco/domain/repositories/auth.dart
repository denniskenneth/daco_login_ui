import 'package:daco_login/features/daco/domain/entities/account/account.dart';
import 'package:dartz/dartz.dart';

abstract class BaseAuthRepository {
  Future<Either<Account, String>> login({
    required String username,
    required String password,
  });

  Future<Either<Account, String>> register({
    required String username,
    required String password,
  });

  Future<Either<List<Account>, String>> accounts();

  Future<Either<String, String>> deleteAccount(Account account);
}
