import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../size_config.dart';

class HomePageHead extends StatelessWidget {
  const HomePageHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            AppLocalizations.of(context)!.first + "\n",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22.0),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: SizeConfig.screenHeight / 2.5,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ukraine.jpg'),
            fit: BoxFit.fill,
          ),
        ));
  }
}
