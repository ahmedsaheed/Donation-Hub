import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sdg_app2/screens/home/components/section_title.dart';
import '../../../size_config.dart';

// ignore: camel_case_types
class location extends StatelessWidget {
  const location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sectionTitle(
          text: AppLocalizations.of(context)!.location + "\n",
          press: () {},
        ),
        Container(
          margin:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/locators.png')),
              borderRadius: BorderRadius.circular(20)),
        ),
      ],
    );
  }
}
