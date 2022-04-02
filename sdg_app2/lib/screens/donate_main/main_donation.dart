import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sdg_app2/constants.dart';
import 'package:sdg_app2/size_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class donateMain extends StatefulWidget {
  const donateMain({Key? key}) : super(key: key);

  @override
  State<donateMain> createState() => _donateMainState();
}

class _donateMainState extends State<donateMain> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text(
        AppLocalizations.of(context)!.donatehead,
      )),
      child: const Scaffold(body: Donations()),
    );
  }
}

class Donations extends StatefulWidget {
  const Donations({Key? key}) : super(key: key);

  @override
  State<Donations> createState() => _DonationsState();
}

class _DonationsState extends State<Donations> {
  String selectedCategory = '';
  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      AppLocalizations.of(context)!.water,
      AppLocalizations.of(context)!.food,
      AppLocalizations.of(context)!.school,
      AppLocalizations.of(context)!.adequacy,
      AppLocalizations.of(context)!.health,
    ];
    for (int i = 0; i < categories.length; i++) {}
    final List<Items> _listItem = [
      Items(
          image: 'assets/images/SDG Wheel_Transparent_WEB.png',
          route: '/sdg',
          category: AppLocalizations.of(context)!.food),
      Items(
          image: 'assets/images/actionAid2.png',
          route: '/actionAid',
          category: AppLocalizations.of(context)!.adequacy),
      Items(
          image: 'assets/images/waterOrg.png',
          route: '/water',
          category: AppLocalizations.of(context)!.water),
      Items(
          image: 'assets/images/charity_water.jpeg',
          route: '/waterCharity',
          category: AppLocalizations.of(context)!.water),
      Items(
          image: 'assets/images/SDG Wheel_Transparent_WEB.png',
          route: '/sdg',
          category: AppLocalizations.of(context)!.water),
      Items(
          image: 'assets/images/SDG Wheel_Transparent_WEB.png',
          route: '/sdg',
          category: AppLocalizations.of(context)!.health),
      Items(
          image: 'assets/images/SDG Wheel_Transparent_WEB.png',
          route: '/sdg',
          category: AppLocalizations.of(context)!.adequacy),
      Items(
          image: 'assets/images/unicef.png',
          route: '/unicef',
          category: AppLocalizations.of(context)!.water),
      Items(
          image: 'assets/images/share.png',
          route: '/shareTheMeal',
          category: AppLocalizations.of(context)!.food),
      Items(
          image: 'assets/images/teamTrees.png',
          route: '/teamTrees',
          category: AppLocalizations.of(context)!.health),
      Items(
          image: 'assets/images/TeamSeas.jpeg',
          route: '/TeamSeas',
          category: AppLocalizations.of(context)!.health),
      Items(
          image: 'assets/images/global giving.png',
          route: '/globalGiving',
          category: AppLocalizations.of(context)!.food),
      Items(
          image: 'assets/images/svc2.jpeg', route: '/STC', category: "School"),
      Items(
          image: 'assets/images/americares.png',
          route: '/americares',
          category: AppLocalizations.of(context)!.school),
      Items(
          image: 'assets/images/taskforce.png',
          route: '/taskForce',
          category: AppLocalizations.of(context)!.health),
      Items(
          image: 'assets/images/camara.jpeg',
          route: '/camera',
          category: AppLocalizations.of(context)!.school),
      Items(
          image: 'assets/images/gfbn.png',
          route: '/gfbn',
          category: AppLocalizations.of(context)!.food),
      Items(
          image: 'assets/images/theirworld.png',
          route: '/theirWorld',
          category: AppLocalizations.of(context)!.school),
      Items(
          image: 'assets/images/pap.png',
          route: '/pap',
          category: AppLocalizations.of(context)!.adequacy),
      Items(
          image: 'assets/images/endPoverty.jpeg',
          route: '/endPoverty',
          category: AppLocalizations.of(context)!.adequacy),
    ];
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: SizeConfig.screenHeight / 6.5,
              color: kPrimaryColor,
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/images/SDG Wheel_Transparent_WEB.png'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.donatenow,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Quicksand",
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Small contributions quickly\nadd up if enough people\ntake up the cause.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFf3fafc)),
                    child: Center(
                      child: IconButton(
                        icon: SvgPicture.asset("assets/icons/give.svg"),
                        onPressed: () {},
                        color: const Color(0xFF69c5df),
                        //size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppLocalizations.of(context)!.desiredmessage,
              style: const TextStyle(
                  color: Color(0xFF1f2326),
                  fontSize: 15,
                  decoration: TextDecoration.none),
            ),
          ),
          const Divider(color: Colors.black38),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < categories.length; i++)
                    Ink(
                      child: InkWell(
                        child: Container(
                          width: 100,
                          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: kPrimaryColor,
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  selectedCategory = categories[i];
                                });
                              },
                              child: Center(
                                child: Text(categories[i],
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.black38),
          const SizedBox(
            height: 30,
          ),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: _listItem
                .where((element) {
                  return element.category.contains(selectedCategory);
                })
                .map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, item.route),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item.image),
                                    fit: BoxFit.cover)),
                          )),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}

class Items {
  String image;
  String route;
  String category;

  Items({required this.image, required this.route, required this.category});
}

/***************************************NOT IN USE @ THE MOMENT********************************************************/

// ButtonsRow(
//         onSetAmount: _setAmount,
//         amount: currentAmount,

// class ButtonsRow extends StatelessWidget {
//   const ButtonsRow({
//     Key? key,
//     required this.onSetAmount,
//     required this.amount,
//   }) : super(key: key);

//   final void Function(int) onSetAmount;
//   final int amount;
//   @override
//   Widget build(BuildContext context) {
//     payment pay = payment();
//     // DonateService donateService = Provider.of<DonateService>(context, listen: false);
//     return SafeArea(
//         child: SingleChildScrollView(
//             child: Column(children: [
//       Container(
//         child: Center(
//           child: Text(
//             "€$amount",
//             style: const TextStyle(
//                 fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ),
//         ),
//         height: SizeConfig.screenHeight / 2.9,
//         decoration: BoxDecoration(
//             color: kPrimaryColor,
//             boxShadow: const [BoxShadow(blurRadius: 8)],
//             borderRadius: BorderRadius.vertical(
//                 bottom: Radius.elliptical(
//                     MediaQuery.of(context).size.width, 100.0))),
//       ),
//       SizedBox(height: getProportionateScreenHeight(20)),
//       Stack(
//         children: [
//           Container(
//             margin: const EdgeInsets.only(left: 10.0, right: 200.0),
//             width: double.infinity,
//             height: 40,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Align(
//               alignment: Alignment.center,
//               child: TextButton(
//                   onPressed: () {
//                     onSetAmount(20);
//                   },
//                   child: const Text("€20.00"),
//                   style: TextButton.styleFrom(
//                     primary: Colors.white,
//                     textStyle: const TextStyle(
//                       fontSize: 15.0,
//                       fontStyle: FontStyle.normal,
//                     ),
//                   )),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(left: 200.0, right: 10.0),
//             width: double.infinity,
//             height: 40,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Align(
//               alignment: Alignment.center,
//               child: TextButton(
//                   onPressed: () {
//                     onSetAmount(35);
//                   },
//                   child: const Text("€35.00"),
//                   style: TextButton.styleFrom(
//                     primary: Colors.white,
//                     textStyle: const TextStyle(
//                       fontSize: 15.0,
//                       fontStyle: FontStyle.normal,
//                     ),
//                   )),
//             ),
//           ),
//         ],
//       ),
//       SizedBox(height: getProportionateScreenWidth(20)),
//       Stack(
//         children: [
//           Container(
//             margin: const EdgeInsets.only(left: 10.0, right: 200.0),
//             width: double.infinity,
//             height: 40,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Align(
//               alignment: Alignment.center,
//               child: TextButton(
//                   onPressed: () {
//                     onSetAmount(50);
//                   },
//                   child: const Text("€50.00"),
//                   style: TextButton.styleFrom(
//                     primary: Colors.white,
//                     textStyle: const TextStyle(
//                       fontSize: 15.0,
//                       fontStyle: FontStyle.normal,
//                     ),
//                   )),
//             ),
//           ),
//           SizedBox(height: getProportionateScreenHeight(20)),
//           Container(
//             margin: const EdgeInsets.only(left: 200.0, right: 10.0),
//             width: double.infinity,
//             height: 40,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Align(
//               alignment: Alignment.center,
//               child: TextButton(
//                   onPressed: () {
//                     onSetAmount(100);
//                   },
//                   child: const Text("€100.00"),
//                   style: TextButton.styleFrom(
//                     primary: Colors.white,
//                     textStyle: const TextStyle(
//                       fontSize: 15.0,
//                       fontStyle: FontStyle.normal,
//                     ),
//                   )),
//             ),
//           ),
//         ],
//       ),
//       SizedBox(height: getProportionateScreenWidth(20)),
//       Padding(
//         padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//         child: TextField(
//           onChanged: (text) {
//             var x = int.parse(text);
//             onSetAmount(x);
//           },
//           textAlign: TextAlign.center,
//           decoration: const InputDecoration(
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(width: 15.0),
//               ),
//               labelText: 'Your Choice',
//               hintText: '€0.00'),
//         ),
//       ),
//       SizedBox(height: getProportionateScreenWidth(20)),
//       const Align(
//         alignment: Alignment.center,
//         child: Text(
//           "Give support where it is most needed.",
//           style: TextStyle(
//               color: Colors.black,
//               fontSize: 18.0,
//               fontWeight: FontWeight.bold,
//               fontFamily: "Quicksand"),
//         ),
//       ),
//       SizedBox(height: getProportionateScreenWidth(20)),
//       Container(
//         margin: const EdgeInsets.only(left: 15.0, right: 15.0),
//         width: double.infinity,
//         height: 60,
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Align(
//           alignment: Alignment.center,
//           child: TextButton(
//               onPressed: () async {
//                 await pay.makePayment(context, amount: amount * 100);
//               },
//               child: Text("Give €$amount Now"),
//               style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 textStyle: const TextStyle(
//                   fontSize: 15.0,
//                   fontStyle: FontStyle.normal,
//                 ),
//               )),
//         ),
//       ),
//       Stack(
//         children: [
//           Container(
//             margin: const EdgeInsets.only(left: 40.0, right: 8.0),
//             child: Align(
//               alignment: Alignment.topCenter,
//               child: RichText(
//                 text: TextSpan(children: [
//                   TextSpan(
//                       style: const TextStyle(
//                         color: Colors.grey,
//                         fontSize: 14.0,
//                         fontWeight: FontWeight.normal,
//                       ),
//                       text:
//                           "\nAll donations are sent directly to \nUnited Nations Joint SDG Funds.",
//                       recognizer: TapGestureRecognizer()
//                         ..onTap = () async {
//                           var url = "https://www.jointsdgfund.org/";
//                           if (await canLaunch(url)) {
//                             await launch(url);
//                           } else {
//                             throw 'Could not launch $url';
//                           }
//                         }),
//                 ]),
//               ),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(left: 10.0, right: 100.0),
//             height: 60.0,
//             width: 90.0,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/sdg.png'),
//                 fit: BoxFit.fill,
//               ),
//               shape: BoxShape.circle,
//             ),
//           )
//         ],
//       )
//     ])));
//   }
// }
