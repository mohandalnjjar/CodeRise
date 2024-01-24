import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_with_me/features/home/presentation/widgets/custome_appbar.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppbar(
            title: 'Details',
            icon: FontAwesomeIcons.x,
            onpressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
