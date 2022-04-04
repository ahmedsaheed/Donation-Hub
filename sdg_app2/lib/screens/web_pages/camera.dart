import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sdg_app2/constants.dart';
import '../../components/bottom_nav.dart';
import '../../enums.dart';
import '../donate_main/donate_nain_screen.dart';

class camera extends StatelessWidget {
  const camera({Key? key}) : super(key: key);

  // static String routeName = "/globalGiving";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Camera Education"),
        leading: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: const Text('Thank You For Donating'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: const <Widget>[
                        Text('We really appreciate you'),
                        Text(
                            'You will recieve an email of appreciation in no time once confirmed.'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                        child: const Text('Continue'),
                        onPressed: () =>
                            Navigator.pushNamed(context, DonateMain.routeName)),
                  ],
                );
              },
            );
          },
          child: const Icon(
            CupertinoIcons.left_chevron,
            color: kPrimaryColor,
          ),
        ),
      ),
      child: SafeArea(
        child: WebView(
          initialUrl: AppLocalizations.of(context)!.camera,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.give),
      ),
    );
  }
}
