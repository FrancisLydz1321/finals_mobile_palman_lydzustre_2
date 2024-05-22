import 'package:finals_mobile_palman_lydzustre/constants/themes.dart';
import 'package:flutter/material.dart';

class AdsBannerWidget extends StatelessWidget {
  // 12.)
  const AdsBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Apple Store',
                    style: AppTheme
                        .kBigTitle, // 10.) class: seperating variable in a class. Can be found on themes.dart
                  ),
                  const SizedBox(
                    // 11.) either use this or gap extension found in flutter pub dev: "gap"
                    height: 12,
                  ),
                  Text(
                    'aklaskja;skf;afkja;fklasjf;lakfj;askfjsa;klfasf',
                    style: AppTheme.kBodyText.copyWith(color: kWhiteColor),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kWhiteColor,
                        foregroundColor: kSecondaryColor,
                      ),
                      onPressed: () {},
                      child: Text('Shop Now!'))
                ],
              ),
            ),
          ),
          Image.asset('assets/general/landing.png'),
        ],
      ),
    );
  }
}
