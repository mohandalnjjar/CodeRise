import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/home/data/models/second_list_view_mode.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.data,
  });

  final careersPageViewModel data;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.5 / 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              data.Image,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kPrimaryColor.withOpacity(.90),
                    kPrimaryColor.withOpacity(.70),
                    kPrimaryColor.withOpacity(0)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: FittedBox(
                child: Text(
                  data.title,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
