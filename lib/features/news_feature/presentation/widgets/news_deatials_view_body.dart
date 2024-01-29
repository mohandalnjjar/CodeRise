import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/styles.dart';
import 'package:learn_with_me/core/utils/widgets/app_bar.dart';
import 'package:learn_with_me/features/news_feature/data/models/news_model.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CustomAppbar(
              title: 'Details',
              IconSize: 22,
              icon: FontAwesomeIcons.x,
              onpressed: () {
                context.pop();
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsModel.title,
                    style: Styles.BigTitle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    newsModel.author == '' || newsModel.author == null
                        ? 'Un Konwn'
                        : newsModel.author!,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Posted at ${newsModel.publishedAt.year}:${newsModel.publishedAt.month}:${newsModel.publishedAt.day}",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(20),
                    child: CachedNetworkImage(
                      imageUrl: newsModel.urlToImage ??
                          'https://images.pexels.com/photos/15311378/pexels-photo-15311378/free-photo-of-woman-says-goodbye.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      placeholder: (context, url) => Image.network(
                        'https://cdn.pixabay.com/photo/2022/01/31/19/30/error-6984855_1280.png',
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Description',
                    style: Styles.BigTitle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    newsModel.description == '' || newsModel.description == null
                        ? 'Sorry There is No Description For this Article'
                        : newsModel.description!,
                    style: Styles.MediumTitle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Content',
                    style: Styles.BigTitle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    newsModel.content == '' || newsModel.content == null
                        ? 'There is no content for this article'
                        : newsModel.content!,
                    style: Styles.MediumTitle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
