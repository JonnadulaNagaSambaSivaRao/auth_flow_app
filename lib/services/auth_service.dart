import '../models/user.dart';

class AuthService {
  User? _registeredUser;

  Future<bool> register({
    required String name,
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 2));

    _registeredUser = User(name: name, email: email);

    return true;
  }

  Future<User?> login({required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 2));

    if (_registeredUser != null && _registeredUser!.email == email) {
      return _registeredUser;
    }

    return null;
  }
}
