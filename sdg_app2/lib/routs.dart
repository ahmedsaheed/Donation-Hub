import 'package:flutter/widgets.dart';
import 'package:sdg_app2/screens/home/home_screen.dart';
import 'package:sdg_app2/screens/Explore/components/body.dart';
import 'package:sdg_app2/screens/Explore/give_screen.dart';
import 'package:sdg_app2/screens/donate_main/donate_nain_screen.dart';
import 'package:sdg_app2/screens/splash/splash_screen.dart';
import 'package:sdg_app2/screens/user_profile/component/profile_screen.dart';
import 'package:sdg_app2/screens/web_pages/actionAid.dart';
import 'package:sdg_app2/screens/web_pages/americares.dart';
import 'package:sdg_app2/screens/web_pages/camera.dart';
import 'package:sdg_app2/screens/web_pages/charityWater.dart';
import 'package:sdg_app2/screens/web_pages/endPoverty.dart';
import 'package:sdg_app2/screens/web_pages/gfbn.dart';
import 'package:sdg_app2/screens/web_pages/global_giving.dart';
import 'package:sdg_app2/screens/web_pages/pap.dart';
import 'package:sdg_app2/screens/web_pages/saveDChild.dart';
import 'package:sdg_app2/screens/web_pages/sdg.dart';
import 'package:sdg_app2/screens/web_pages/shareTheMeal.dart';
import 'package:sdg_app2/screens/web_pages/taskforce.dart';
import 'package:sdg_app2/screens/web_pages/teamSea.dart';
import 'package:sdg_app2/screens/web_pages/teamTrees.dart';
import 'package:sdg_app2/screens/web_pages/theirWorld.dart';
import 'package:sdg_app2/screens/web_pages/unicef.dart';
import 'package:sdg_app2/screens/web_pages/waterOrg.dart';

//all routes are available here.
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  GiveScreen.routeName: (context) => GivePage(),
  DonateMain.routeName: (context) => DonateMain(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  '/sdg': (context) => const sdg(),
  '/teamTrees': (context) => const teamTrees(),
  '/TeamSeas': (context) => const TeamSeas(),
  '/unicef': (context) => const unicef(),
  '/globalGiving': (context) => const globalGiving(),
  '/shareTheMeal': (context) => const shareTheMeal(),
  '/STC': (context) => const STC(),
  '/americares': (context) => const ameriCares(),
  '/actionAid': (context) => const actionAid(),
  '/waterCharity': (context) => const charityWater(),
  '/taskForce': (context) => const taskForce(),
  '/camera': (context) => const camera(),
  '/water': (context) => const water(),
  '/gfbn': (context) => const gfbn(),
  '/theirWorld': (context) => const theirWorld(),
  '/pap': (context) => const pap(),
  '/endPoverty': (context) => const endPoverty(),
};
