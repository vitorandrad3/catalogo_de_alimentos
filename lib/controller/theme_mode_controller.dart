import 'package:flutter/material.dart';

import '../models/settings.dart';

class SwitchCurrentTheme extends ChangeNotifier {
  static SwitchCurrentTheme switchCurrentTheme = SwitchCurrentTheme();

  void changeTheme(changeValue) {
    Settings.settingsValues.isNight = changeValue;
    notifyListeners();
  }
}
