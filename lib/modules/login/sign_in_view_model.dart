import 'dart:async';

import 'package:flutter/foundation.dart';

class SignInViewModel with ChangeNotifier {
  SignInViewModel();
  bool isLoading = false;
  dynamic error;

  Future<void> _signIn() async {
    try {
      isLoading = true;
      notifyListeners();
      // await signInMethod();
      error = null;
    } catch (e) {
      error = e;
      rethrow;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
