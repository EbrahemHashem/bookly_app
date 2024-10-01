import 'package:bookly_app/features/home/presentation/views/widgets/home%20view%20widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomBookListView extends StatelessWidget {
  const CustomBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(right: 12), child: CustomListViewItem()),
      ),
    );
  }
}
