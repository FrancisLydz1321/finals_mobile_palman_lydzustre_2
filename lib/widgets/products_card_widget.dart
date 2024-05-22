import 'package:finals_mobile_palman_lydzustre/constants/themes.dart';
import 'package:flutter/material.dart';

class ProductsCardWidget extends StatelessWidget {
  // 19.)
  const ProductsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // 16.) listview for the listed products
      padding: const EdgeInsets.all(4),
      // color: Colors.amber,
      width: double.infinity,
      height: 300,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 4,
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
                  width: double.infinity,
                  color: kLightBackground,
                  padding: const EdgeInsets.all(12),
                  child: Image.asset('assets/products/airpods.jpg'),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Products name',
                      style: AppTheme
                          .kCardTitle, // 18.) importing variable to another class
                      overflow: TextOverflow
                          .ellipsis, // 17.) to adjust content inside every card in the listview. This is awesome.
                    ),
                    Text(
                      'Short product Description',
                      style: AppTheme.kBodyText,
                    ),
                    Text('price'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$854',
                          style: AppTheme
                              .kCardTitle, // 18.) importing variable to another class
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle,
                              size: 30,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
