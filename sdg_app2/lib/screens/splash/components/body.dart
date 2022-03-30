import 'package:flutter/material.dart';
import 'package:sdg_app2/constants.dart';
import 'package:sdg_app2/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../components/default_button.dart';
import '../../../screens/home/home_screen.dart';
import 'splash_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

List<Map<String, String>> splashData = [];

class _BodyState extends State<Body> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {
        "text": AppLocalizations.of(context)!.firstsplash,
        "image": "assets/images/splash1.png"
      },
      {
        "text": AppLocalizations.of(context)!.secondspalsh,
        "image": "assets/images/splash3.png"
      },
      {
        "text": AppLocalizations.of(context)!.lastsplash,
        "image": "assets/images/splash2.png"
      }
    ];
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    const Spacer(flex: 3),
                    Center(
                      child: DefaultButton(
                          text: AppLocalizations.of(context)!.splashbutton,
                          press: () async {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool('showHome', true);
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          }),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
