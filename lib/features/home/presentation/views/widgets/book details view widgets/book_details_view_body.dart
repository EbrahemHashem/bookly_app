import 'package:bookly_app/features/home/presentation/views/widgets/book%20details%20view%20widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppbar(),
        ],
      ),
    );
  }
}
