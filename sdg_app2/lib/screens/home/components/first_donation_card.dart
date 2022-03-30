import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../donate_main/donate_nain_screen.dart';

// ignore: camel_case_types
class firstDonationCard extends StatelessWidget {
  const firstDonationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 200.0,
                      width: getProportionateScreenWidth(350),
                      child: Image.asset(
                        'assets/images/hunger.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    AppLocalizations.of(context)!.firstcard,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
                ButtonBar(
                  children: [
                    TextButton(
                      child: Center(
                          child:
                              Text(AppLocalizations.of(context)!.biggivenow)),
                      onPressed: () =>
                          Navigator.pushNamed(context, DonateMain.routeName),
                    ),
                  ],
                )
              ],
            )));
  }
}
