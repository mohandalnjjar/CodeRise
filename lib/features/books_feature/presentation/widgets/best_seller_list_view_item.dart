import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/styles.dart';

class booksList extends StatelessWidget {
  const booksList({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(14),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://images.pexels.com/photos/2908773/pexels-photo-2908773.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  placeholder: (context, url) => Image.network(
                    'https://images.pexels.com/photos/3387168/pexels-photo-3387168.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                  errorWidget: (context, url, error) => const Center(
                    child: Icon(
                      Icons.error,
                    ),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Cather in the Rye",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleSemiBold16,
            ),
            Text(
              "Anders Hejlsberg",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleRegular14.copyWith(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
