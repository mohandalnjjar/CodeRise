import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_with_me/core/utils/widgets/app_bar.dart';
import 'package:learn_with_me/features/news_feature/presentation/widgets/search_news_list_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppbar(
                title: 'Search',
                icon: FontAwesomeIcons.x,
                onpressed: () => context.pop(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: const SizedBox(
                height: 15,
              ),
            ),
            SearchListView(),
          ],
        ),
      ),
    );
  }
}