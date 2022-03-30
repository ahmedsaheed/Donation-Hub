import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../donate_main/donate_nain_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class secondDonationCard extends StatelessWidget {
  const secondDonationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 200.0,
              width: getProportionateScreenWidth(350),
              child: Image.asset(
                'assets/images/edu2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          )),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text(
              AppLocalizations.of(context)!.secondcard,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 15,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ButtonBar(
            children: [
              TextButton(
                child: Text(
                  AppLocalizations.of(context)!.biggivenow,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, DonateMain.routeName),
              ),
            ],
          )
        ],
      ),
    );
  }
}
