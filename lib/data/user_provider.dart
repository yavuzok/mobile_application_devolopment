import 'package:flutter/cupertino.dart';
import 'package:mobile_application_devolopment/data/user.dart';

import 'api_service.dart';

class UserProvider with ChangeNotifier {
  List<User> _users = [];
  bool _isLoading = false;

  List<User> get users => _users;
  bool get isLoading => _isLoading;

  void fetchUsers() async {
    _isLoading = true;
    notifyListeners();

    try {
      _users = await ApiService().fetchUsers();
    } catch (e) {
      print(e);
    }

    _isLoading = false;
    notifyListeners();
  }
}