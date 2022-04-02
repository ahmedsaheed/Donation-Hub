import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:provider/provider.dart';
import 'package:sdg_app2/components/bottom_nav.dart';
import 'package:sdg_app2/constants.dart';
import 'package:sdg_app2/l10n/l10.dart';
import 'package:sdg_app2/provider/locale_provider.dart';
import '../../enums.dart';

import 'components/body.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  bool get isIOS => foundation.defaultTargetPlatform == TargetPlatform.iOS;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          AppLocalizations.of(context)!.header,
        ),
        trailing: Card(child: dropdown(locale: locale)),
      ),
      child: const Scaffold(
        body: Body(),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }
}

class dropdown extends StatelessWidget {
  const dropdown({
    Key? key,
    required this.locale,
  }) : super(key: key);

  final Locale? locale;

  @override
  Widget build(BuildContext context) {
    _getFlag(String code) {
      switch (code) {
        case 'es':
          return "🇪🇸";
        case 'de':
          return "🇩🇪";
        case 'fr':
          return "🇫🇷";
        case 'nl':
          return "🇳🇱";
        case 'zh':
          return "🇨🇳";
        default:
          return "🇬🇧";
      }
    }

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonHideUnderline(
            child: DropdownButton(
          icon: const Icon(
            Icons.language,
            color: kPrimaryColor,
          ),
          items: I10n.all.map((locale) {
            final flag = _getFlag(locale.languageCode);
            return DropdownMenuItem(
              child: Center(
                  child: Text(
                flag,
                style: const TextStyle(fontSize: 20),
              )),
              value: locale,
              onTap: () {
                final provider =
                    Provider.of<LocaleProvider>(context, listen: false);
                provider.setLocale(locale);
              },
            );
          }).toList(),
          onChanged: (_) {},
        )));
  }
}
