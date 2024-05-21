import 'package:finals_mobile_palman_lydzustre/constants/themes.dart';
import 'package:flutter/material.dart';
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
            Container(
              // 9.) Advertisement tab
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Text('Apple Store'),
                        Text('aklaskja;skf;afkja;fklasjf;lakfj;askfjsa;klfasf'),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text('asdasdjasdhlaksdasd'))
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
