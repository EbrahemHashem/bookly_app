import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book%20details%20view%20widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book%20details%20view%20widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book%20details%20view%20widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home%20view%20widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home%20view%20widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .20),
            child: const CustomListViewItem(),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 4,
          ),
          const Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction(),
          const SizedBox(
            height: 49,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBooksListView(),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
