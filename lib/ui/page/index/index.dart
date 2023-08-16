import 'package:flutter/material.dart';
import 'package:viking/generated/assets.dart';
import 'package:viking/ui/page/contact/contact.dart';
import 'package:viking/ui/page/destinations/destinations.dart';
import 'package:viking/ui/page/how_we_are/how_we_are.dart';
import 'package:viking/ui/page/pricing/pricing.dart';
import 'package:viking/ui/widgets/widgets.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  var index = 0;

  var pages = [
    const HowWeAre(),
    const Destinations(),
    const Pricing(),
    const Contact()
  ];
  List<String> images = [
    Assets.image1,
    Assets.image2,
    Assets.image3,
    Assets.image4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        initialIndex: index,
        child: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                const SideBar(),
                Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                images[index],
                              ),
                              fit: BoxFit.cover)),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TabBar(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            tabs: const [
                              Tab(
                                text: "Who We Are",
                              ),
                              Tab(
                                text: "Destinations",
                              ),
                              Tab(
                                text: "Pricing",
                              ),
                              Tab(
                                text: "Contact",
                              ),
                            ],
                            onTap: (value) {
                              setState(() {
                                index = value;
                              });
                            },
                          ),
                          Expanded(child: pages[index]),
                          const Footer(),
                        ],
                      ),
                    )),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
