import 'package:daco_login/features/daco/domain/entities/account/account.dart';
import 'package:daco_login/features/daco/domain/repositories/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class SpringbootAuthRepository implements BaseAuthRepository {
  final _baseUrl = "http://127.0.0.1:8080/api/v1/auth";
  late final Dio _server = Dio(BaseOptions(baseUrl: _baseUrl));

  @override
  Future<Either<List<Account>, String>> accounts() async {
    try {
      var response = await _server.get('/accounts');
      if (response.statusCode == 200) {
        var data = response.data['data'] as List;
        var accounts = data.map((json) => Account.fromJson(json)).toList();
        return Left(accounts);
      } else {
        return Right(response.data['data'].toString());
      }
    } on DioError catch (e) {
      return Right(e.message);
    } on PlatformException catch (e) {
      return Right(e.message ?? 'An unknown error occurred');
    }
  }

  @override
  Future<Either<String, String>> deleteAccount(Account account) async {
    try {
      var response = await _server.get('/accounts/delete');
      if (response.statusCode == 200) {
        return Left(response.data['data'].toString());
      } else {
        return Right(response.data['data'].toString());
      }
    } on DioError catch (e) {
      return Right(e.message);
    } on PlatformException catch (e) {
      return Right(e.message ?? 'An unknown error occurred');
    }
  }

  @override
  Future<Either<Account, String>> login(
      {required String username, required String password}) async {
    try {
      var response = await _server.post(
        '/login',
        data: {
          "username": username,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        var json = response.data['data'] as Map<String, dynamic>;
        return Left(Account.fromJson(json));
      } else {
        return Right(response.data['data'].toString());
      }
    } on DioError catch (e) {
      return Right(e.message);
    } on PlatformException catch (e) {
      return Right(e.message ?? 'An unknown error occurred');
    }
  }

  @override
  Future<Either<Account, String>> register(
      {required String username, required String password}) async {
    try {
      var response = await _server.post(
        '/register',
        data: {
          "username": username,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        var json = response.data['data'] as Map<String, dynamic>;
        return Left(Account.fromJson(json));
      } else {
        return Right(response.data['data'].toString());
      }
    } on DioError catch (e) {
      return Right(e.message);
    } on PlatformException catch (e) {
      return Right(e.message ?? 'An unknown error occurred');
    }
  }
}
