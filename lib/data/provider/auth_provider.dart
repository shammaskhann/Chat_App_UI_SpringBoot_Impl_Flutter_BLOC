import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:springboot_test_bench/core/constants/api_urls.dart';
import 'dart:convert';

import 'package:springboot_test_bench/data/models/user_model.dart';
import 'package:springboot_test_bench/services/sharedPref_service.dart';

class AuthProvider {
  final SharedPreferencesService _prefs;
  AuthProvider(this._prefs);
  static Future<bool> registerUser(
      String username, String email, String password, File? profilePic) async {
    try {
      const url = ApiConstants.AUTH_REGISTER;
      log('url: $url', name: 'AuthProvider.registerUser');
      log('username: $username', name: 'AuthProvider.registerUser');
      log('email: $email', name: 'AuthProvider.registerUser');

      final request = http.MultipartRequest('POST', Uri.parse(url))
        ..fields['username'] = username
        ..fields['email'] = email
        ..fields['password'] = password;
      if (profilePic != null) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'profilePic',
            profilePic.path,
            filename: profilePic.path.split('/').last,
          ),
        );
      }
      log('Request fields: ${request.fields}',
          name: 'AuthProvider.registerUser');
      log('Request files: ${request.files}', name: 'AuthProvider.registerUser');
      final response = await request.send();
      log('Response status: ${response.statusCode}',
          name: 'AuthProvider.registerUser');
      final responseBody = await response.stream.bytesToString();
      log(responseBody, name: 'AuthProvider.registerUser');
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
