import 'package:finals_mobile_palman_lydzustre/constants/themes.dart';
import 'package:finals_mobile_palman_lydzustre/widgets/ads_banner_widget.dart';
import 'package:finals_mobile_palman_lydzustre/widgets/chip_widget.dart';
import 'package:finals_mobile_palman_lydzustre/widgets/products_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart'; // 23.) import grid dependency

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
      drawer: const Drawer(), // 7.) side drawer feature
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
              height: 70,
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
            const SizedBox(
              height: 12.0,
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
            // const SizedBox(
            //   height: 8.0,
            // ),
            const ProductsCardWidget(), // 19.) importing class/widget to another folder

            Row(
              // 22.) feature products and see all number 2
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Products',
                  style: AppTheme.kHeadingOne,
                ),
                Text(
                  'See all',
                  style: AppTheme.kSeeAllText,
                ),
              ],
            ),

            MasonryGridView.builder(
              // 23.) flutter staggered grid
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              shrinkWrap: false,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
              itemBuilder: (context, index) => const SizedBox(
                height: 250,
                child: ProductsCardWidget(),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
