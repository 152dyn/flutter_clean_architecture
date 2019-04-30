
import 'package:example/src/domain/entities/user.dart';
import 'package:example/src/domain/repositories/users_repository.dart';

class DataUsersRepository extends UsersRepository {

  List<User> users;
  static DataUsersRepository _instance = DataUsersRepository._internal();
  DataUsersRepository._internal() {
    users = List<User>();
    users.addAll([User('test-uid', 'John Smith', 18), User('test-uid2', 'John Doe', 22)]);
  }
  factory DataUsersRepository() => _instance;

  @override
  Future<List<User>> getAllUsers() async {
    return users;
  }

  @override
  Future<User> getUser(String uid) async {
    return users.firstWhere((user) => user.uid == uid);
  }
  
}