import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPreferencesService {
  static const String _tokenKey = 'token';
  static const String _userKey = 'user';

  // Save user data
  Future<void> saveUserData(String token, Map<String, dynamic> user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
    await prefs.setString(_userKey, jsonEncode(user));
  }

  // Get Token
  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  // Get User Data
  static Future<Map<String, dynamic>?> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    String? userData = prefs.getString(_userKey);
    if (userData != null) {
      return jsonDecode(userData);
    }
    return null;
  }

  // Get individual user details
  static Future<String?> getUserId() async {
    final userData = await getUserData();
    return userData?['id'];
  }

  static Future<String?> getUsername() async {
    final userData = await getUserData();
    return userData?['username'];
  }

  static Future<String?> getEmail() async {
    final userData = await getUserData();
    return userData?['email'];
  }

  // Clear all user data
  static Future<void> clearUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
    await prefs.remove(_userKey);
  }
}
