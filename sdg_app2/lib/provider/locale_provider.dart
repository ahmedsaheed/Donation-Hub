import 'package:flutter/material.dart';
import 'package:sdg_app2/l10n/l10.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;

//  LocaleProvider(this._locale);

  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!I10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  // void clearLocale() {
  //   _locale = null;
  //   notifyListeners();
  // }
}
