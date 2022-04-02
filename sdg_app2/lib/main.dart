import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sdg_app2/constants.dart';
import 'package:sdg_app2/l10n/l10.dart';
import 'package:sdg_app2/provider/locale_provider.dart';
import 'package:sdg_app2/provider/google_signIn.dart';
import 'package:sdg_app2/routs.dart';
import 'package:sdg_app2/screens/splash/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

bool get isIos => foundation.defaultTargetPlatform == TargetPlatform.iOS;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: ChangeNotifierProvider(
          create: (context) => LocaleProvider(),
          child: Builder(builder: (context) {
            final provider = Provider.of<LocaleProvider>(context);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Global Goals',
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                fontFamily: "Quicksand",
                textTheme: const TextTheme(
                  bodyText1: TextStyle(color: kTextColor),
                  bodyText2: TextStyle(color: kTextColor),
                ),
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              locale: provider.locale,
              supportedLocales: I10n.all,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              //home: SplashScreen(),
              initialRoute: SplashScreen.routeName,
              routes: routes,
            );
          }),
        ),
      );
}
