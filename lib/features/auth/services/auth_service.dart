import 'package:ecom/constants/global_variables.dart';
import 'package:ecom/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  //sign up user
  void signUpUser({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '');
      http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
      );
    } catch (e) {}
  }
}
