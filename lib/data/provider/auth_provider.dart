import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:springboot_test_bench/core/constants/api_urls.dart';
import 'dart:convert';

import 'package:springboot_test_bench/data/models/user_model.dart';
import 'package:springboot_test_bench/services/sharedPref_service.dart';

class AuthProvider {
  final SharedPreferencesService _prefs;
  AuthProvider(this._prefs);
  static Future<bool> registerUser(
      String username, String email, String password) async {
    try {
      const url = ApiConstants.AUTH_REGISTER;
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'username': username,
          'email': email,
          'password': password,
        }),
      );
      log(response.body, name: 'AuthProvider.registerUser');
      if (response.statusCode == 201) {
        return true;
      } else {
        throw Exception('Failed to register user');
      }
    } catch (e) {
      log(e.toString(), name: 'AuthProvider.registerUser');
      throw Exception('Failed to register user');
    }
  }

  //login
  Future<UserModel> loginUser(String username, String password) async {
    try {
      const String url = ApiConstants.AUTH_LOGIN;
      log('url: $url', name: 'AuthProvider.loginUser');
      log('username: $username', name: 'AuthProvider.loginUser');
      log('password: $password', name: 'AuthProvider.loginUser');
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': username,
          'password': password,
        }),
      );
      log(response.body, name: 'AuthProvider.loginUser');
      if (response.statusCode == 200) {
        // Save the token and user data to shared preferences
        await _prefs.saveUserData(jsonDecode(response.body)['data']['token'],
            jsonDecode(response.body)['data']['user']);
        return UserModel.fromJson(jsonDecode(response.body)['data']['user']);
      } else if (response.statusCode == 404) {
        throw Exception('Wrong Email or Passowrd');
      } else {
        throw Exception('Failed to login user');
      }
    } catch (e) {
      log(e.toString(), name: 'AuthProvider.loginUser');
      throw Exception('Failed to login user');
    }
  }
}
