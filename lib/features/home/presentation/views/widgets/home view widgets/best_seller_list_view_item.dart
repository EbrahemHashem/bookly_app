import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home%20view%20widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          // photo
          AspectRatio(
            aspectRatio: .66,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.amber,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Assets.testImage),
                ),
              ),
            ),
          ),
          // end photo
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14,
                ),
                // price and rating row
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    // rating
                    const BookRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
