import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../donate_main/donate_nain_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: camel_case_types
class donationTracker extends StatelessWidget {
  donationTracker({
    Key? key,
  }) : super(key: key);

  //final payment pay = payment();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Tracker(),
      Container(
        margin: const EdgeInsets.only(left: 200.0, right: 10.0),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: Alignment.center,
          child: TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, DonateMain.routeName),
              child: Text(AppLocalizations.of(context)!.givenow),
              style: TextButton.styleFrom(
                primary: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.normal,
                ),
              )),
        ),
      ),
    ]);
  }
}

class SmallBar extends StatelessWidget {
  SmallBar({required this.filledFraction, required this.color});

  final double filledFraction;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
        maxWidth: 100,
        child: Container(
          height: 6,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: CupertinoColors.lightBackgroundGray,
          ),
          alignment: Alignment.centerLeft,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              width: constraints.maxWidth * filledFraction,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: color,
              ),
            );
          }),
        ));
  }
}

class Tracker extends StatelessWidget {
  const Tracker(
      {this.name = "0",
      this.value = "0",
      this.color = kPrimaryColor,
      this.fraction = 10 / 2000});

  final String name;
  final String value;
  final Color color;
  final double fraction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 140.0, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name +
              " " +
              AppLocalizations.of(context)!.off +
              " 20,000,000 " +
              AppLocalizations.of(context)!.donors),
          const SizedBox(height: 1),
          SmallBar(
            filledFraction: fraction,
            color: color,
          ),
          Text(value + " " + AppLocalizations.of(context)!.supporters),
        ],
      ),
    );
  }
}
