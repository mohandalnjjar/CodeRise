import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/core/utils/styles.dart';
import 'package:learn_with_me/core/utils/widgets/shimmer_image_effect.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.NewsModelData});

  final NewsModel NewsModelData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kDetailsRouter, extra: NewsModelData);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        child: Container(
          padding: EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height * .17,
          decoration: BoxDecoration(
            color: Color(0xff191233).withOpacity(0.6),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.8 / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: NewsModelData.urlToImage ??
                        'https://images.pexels.com/photos/15311378/pexels-photo-15311378/free-photo-of-woman-says-goodbye.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    errorWidget: (context, url, error) => Image.network(
                      'https://cdn.pixabay.com/photo/2022/01/31/19/30/error-6984855_1280.png',
                    ),
                    placeholder: (context, url) => const ShimmerImageEffect(),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      NewsModelData.title,
                      style: AppStyles.styleRegular16,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    Text(
                      NewsModelData.description == '' ||
                              NewsModelData.description == null
                          ? 'Sorry There is No Description For this Article'
                          : NewsModelData.description!,
                      style: AppStyles.styleRegular14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
