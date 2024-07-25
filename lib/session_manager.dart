import 'dart:convert';

import 'package:sariampenan/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  Future<User?> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userData = prefs.getString('user');
    if (userData != null) {
      return User.fromJson(jsonDecode(userData));
    }
    return null;
  }

  Future<void> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    final userData = jsonEncode(user.toMap());
    await prefs.setString('user', userData);
  }

  Future<User> loadUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userData = prefs.getString('user');

    if (userData == null) {
      // Kembalikan User kosong jika tidak ada data
      return User(
          id: '', name: '', phoneNumber: '', email: '', password: '', role: '');
    }

    final userMap = jsonDecode(userData) as Map<String, dynamic>;
    return User.fromMap(
        userMap.map((key, value) => MapEntry(key, value.toString())));
  }

  Future<void> clearSession() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('user');
  }
}
