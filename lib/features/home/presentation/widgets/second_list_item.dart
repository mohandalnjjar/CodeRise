import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/styles.dart';
import 'package:learn_with_me/features/home/data/models/second_list_view_mode.dart';

class SecondListItem extends StatelessWidget {
  const SecondListItem({super.key, required this.data});
  final careersPageViewModel data;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 3,
      child: GestureDetector(
        onTap: data.OnPressd,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff191233),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: Image.asset(
                  data.Image,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    data.title,
                    style: AppStyles.styleBold,
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
