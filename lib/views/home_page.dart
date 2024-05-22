import 'package:finals_mobile_palman_lydzustre/constants/themes.dart';
import 'package:finals_mobile_palman_lydzustre/widgets/ads_banner_widget.dart';
import 'package:finals_mobile_palman_lydzustre/widgets/chip_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 4.) appbar features
        backgroundColor: kSecondaryColor,
        title: SvgPicture.asset(
          // 5.) importing title SVG image
          'assets/general/store_brand_white.svg',
          color: kWhiteColor,
          width: 180,
        ),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 20)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.local_mall_outlined),
            color: kWhiteColor,
          ),
        ],
      ),
      drawer: Drawer(), // 7.) side drawer feature
      body: SingleChildScrollView(
          // 8.) below of appbar
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            // to be add: add benner, chip section, hot sales, featured product,
            // Ads Banner section
            const AdsBannerWidget(), // 12.) seperate widget/class to another file: ads_banner_widget.dart

            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: const [
                  ChipWidget(
                    // 14.) adding names each chip tab: chips_widget.dart
                    chipLabel: 'All',
                  ),
                  ChipWidget(
                    chipLabel: 'Computers',
                  ),
                  ChipWidget(
                    chipLabel: 'Headsets',
                  ),
                  ChipWidget(
                    chipLabel: 'Accessories',
                  ),
                  ChipWidget(
                    chipLabel: 'Printing',
                  ),
                  ChipWidget(
                    chipLabel: 'Camera',
                  ),
                ], // 13.) seperate widget/class to another file: chips_widget.dart
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Sales',
                  style: AppTheme
                      .kHeadingOne, // 15.) adding another class into the widget
                ),
                Text(
                  'See all',
                  style: AppTheme
                      .kSeeAllText, // 15.) adding another class into the widget
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              // 16.) listview for the listed products
              padding: const EdgeInsets.all(4),
              // color: Colors.amber,
              width: double.infinity,
              height: 290,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 6),
                        color: Colors.black.withOpacity(.5),
                        blurRadius: 8,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * .5,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: kLightBackground,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text('Products name'),
                            Text('Short product Description'),
                            Text('price'),
                            Row(
                              children: [
                                Text('\$854'),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add_circle)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
