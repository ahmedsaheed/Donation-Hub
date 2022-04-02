import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sdg_app2/constants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'donation_data.dart';
import 'donate_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GivePage extends StatefulWidget {
  @override
  _GivePageState createState() => _GivePageState();
}

List<DonationCategory> donate = [];

class _GivePageState extends State<GivePage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        donate = [
          DonationCategory(
            position: 1,
            name: AppLocalizations.of(context)!.water,
            iconImage: 'assets/images/who.gif',
            description: AppLocalizations.of(context)!.waterdescription,
            images: const [
              'assets/images/waterOrg.png',
              'assets/images/unicef.png',
              'assets/images/TeamSeas.jpeg'
            ],
            route: ['/water', '/unicef', '/TeamSeas'],
            url: Uri.dataFromString(
                '<html><body><iframe src="https://ourworldindata.org/grapher/death-rates-unsafe-water" loading="lazy" style="width: 100%; height: 800px; border: 0px none;"></iframe></body></html>',
                mimeType: 'text/html'),
          ),
          DonationCategory(
            position: 2,
            name: AppLocalizations.of(context)!.food,
            iconImage: 'assets/images/food2.png',
            description: AppLocalizations.of(context)!.fooddescription,
            images: [
              'assets/images/share.png',
              'assets/images/gfbn.png',
              'assets/images/global giving.png'
            ],
            route: ['/shareTheMeal', '/gfbn', '/globalGiving'],
            url: Uri.dataFromString(
                '<html><body><iframe src="https://ourworldindata.org/grapher/global-hunger-index?country=IND~BGD~NPL~PAK" loading="lazy" style="width: 100%; height: 800px; border: 0px none;"></iframe></body></html>',
                mimeType: 'text/html'),
          ),
          DonationCategory(
            position: 3,
            name: AppLocalizations.of(context)!.health,
            iconImage: 'assets/images/hospital2.jpg',
            description: AppLocalizations.of(context)!.healthdescription,
            images: [
              'assets/images/taskforce.png',
              'assets/images/SDG Wheel_Transparent_WEB.png'
            ],
            route: [
              '/taskForce',
              '/sdg',
            ],
            url: Uri.dataFromString(
                '<html><body><iframe src="https://ourworldindata.org/grapher/dalys-rate-from-all-causes" loading="lazy" style="width: 100%; height: 800px; border: 0px none;"></iframe></body></html>',
                mimeType: 'text/html'),
          ),
          DonationCategory(
            position: 4,
            name: AppLocalizations.of(context)!.education,
            iconImage: 'assets/images/educated.png',
            description: AppLocalizations.of(context)!.educationdescription,
            images: [
              'assets/images/theirworld.png',
              'assets/images/camara.jpeg'
            ],
            route: ['/theirWorld', '/camera'],
            url: Uri.dataFromString(
                '<html><body><iframe src="https://ourworldindata.org/grapher/out-of-school-girls-of-primary-school-age-by-world-region" loading="lazy" style="width: 100%; height: 800px; border: 0px none;"></iframe></body></html>',
                mimeType: 'text/html'),
          ),
          DonationCategory(
            position: 5,
            name: AppLocalizations.of(context)!.adequacy,
            iconImage: 'assets/images/poor.png',
            description: AppLocalizations.of(context)!.adequacydescription,
            images: [
              'assets/images/pap.png',
              'assets/images/SDG Wheel_Transparent_WEB.png',
              'assets/images/endPoverty.jpeg'
            ],
            route: ['/pap', '/sdg', '/endPoverty'],
            url: Uri.dataFromString(
                '<html><body><iframe src="https://ourworldindata.org/grapher/size-poverty-gap-countries?country=~BRA" loading="lazy" style="width: 100%; height: 800px; border: 0px none;"></iframe></body></html>',
                mimeType: 'text/html'),
          ),
        ];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondaryColor,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [kPrimaryColor, kSecondaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 0.7])),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context)!.givesupport,
                        style: const TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 30,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      DropdownButton<String>(
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              AppLocalizations.of(context)!.whereneeded,
                              style: const TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 24,
                                color: Color(0x7cdbf1ff),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                        ),
                        underline: const SizedBox(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  padding: const EdgeInsets.only(left: 32),
                  child: Swiper(
                    itemCount: donate.length,
                    itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                    layout: SwiperLayout.STACK,
                    pagination: const SwiperPagination(
                      builder:
                          DotSwiperPaginationBuilder(activeSize: 20, space: 4),
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, a, b) => donationdetail(
                                donationInfo: donate[index],
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                const SizedBox(height: 100),
                                Card(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(height: 100),
                                        Text(
                                          donate[index].name.toString(),
                                          style: const TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 23,
                                            color: Color(0xff47455f),
                                            fontWeight: FontWeight.w900,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .whereneeded,
                                          style: const TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 23,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        const SizedBox(height: 32),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .knowmore,
                                              style: const TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: 18,
                                                color: kPrimaryColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            const Icon(
                                              Icons.arrow_forward,
                                              color: kSecondaryColor,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              right: 22,
                              bottom: 70,
                              child: Text(
                                donate[index].position.toString(),
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 200,
                                  color: Colors.black.withOpacity(0.08),
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
