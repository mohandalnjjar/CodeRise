import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/constance.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          kDetailsRouter,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          height: MediaQuery.of(context).size.height * .27,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: CachedNetworkImageProvider(
                  "https://img.zeit.de/wirtschaft/geldanlage/2024-01/bitcoin-kryptowaehrung-geldanlage-bild/wide__1300x731",
                ),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.black87,
                  Colors.black54,
                  Colors.black38.withOpacity(0),
                ],
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, bottom: 8, right: 4),
              child: Text(
                'Kryptowährung: Bitcoin verliert innerhalb eines Tages mehr als neun Prozent an Wert',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
