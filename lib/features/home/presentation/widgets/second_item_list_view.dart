import 'package:flutter/material.dart';
import 'package:learn_with_me/features/home/presentation/widgets/second_list_item.dart';

class SecondList extends StatelessWidget {
  const SecondList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const SecondaryItem();
        },
        itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
