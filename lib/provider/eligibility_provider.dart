import 'package:flutter/cupertino.dart';

class EligibilityProvider extends ChangeNotifier {

  late String _message = 'You have not entered your age yet.';
  late bool _isEligible = false;

  String get message => _message;

  bool get isEligible => _isEligible;

  void checkEligibility(int age) {
    if(age >= 18) {
      eligible();
    } else {
      notEligible();
    }
  }

  void eligible() {
    _isEligible = true;
    _message = 'You are able to marry';

    notifyListeners();
  }

  void notEligible() {
    _isEligible = false;
    _message = 'You are not able to marry';

    notifyListeners();
  }
}