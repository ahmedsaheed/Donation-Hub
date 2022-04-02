import 'package:flutter/material.dart';
import 'package:sdg_app2/enums.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../components/bottom_nav.dart';
import '../../../size_config.dart';
import 'donation_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class donationdetail extends StatelessWidget {
  final DonationCategory donationInfo;

  const donationdetail({Key? key, required this.donationInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                      tag: donationInfo.position,
                      child: Image.asset(donationInfo.iconImage)),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 5),
                        Text(
                          donationInfo.name,
                          style: const TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 31,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const Divider(color: Colors.black38),
                        const SizedBox(height: 32),
                        Text(
                          donationInfo.description,
                          maxLines: 20,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontFamily: 'Quicksand',
                            height: 1.5,
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 32),
                        //const Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            AppLocalizations.of(context)!.pastdata,
                            style: const TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 31,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Divider(color: Colors.black38),
                        SizedBox(
                          width: double.infinity,
                          height: SizeConfig.screenHeight / 2.8,
                          child: WebView(
                            initialUrl: donationInfo.url.toString(),
                            javascriptMode: JavascriptMode.unrestricted,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      donationInfo.name +
                          " " +
                          AppLocalizations.of(context)!.donationorganisation,
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 22,
                        color: Color(0xff47455f),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Divider(color: Colors.black38),
                  ),
                  Container(
                    height: 150,
                    padding: const EdgeInsets.only(left: 32.0),
                    child: ListView.builder(
                        itemCount: donationInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.asset(
                                  donationInfo.images[index],
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Divider(color: Colors.black38),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(0),
        child: CustomBottomNavBar(selectedMenu: MenuState.explore),
      ),
    );
  }
}
