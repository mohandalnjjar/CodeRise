import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          height: 215,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            gradient:
                const LinearGradient(colors: [Colors.black, Colors.white]),
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: CachedNetworkImageProvider(
                  'https://images.pexels.com/photos/23475/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
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
                'This App Was Degined By Mohanad ALnjjar By The Love Flutter Developer Bl Bla Bla Bla Bla bla bla ',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
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
