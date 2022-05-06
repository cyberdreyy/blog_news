import 'package:blog_news/constants.dart';
import 'package:blog_news/models/Blog.dart';
import 'package:blog_news/responsive.dart';
import 'package:blog_news/screens/home/components/sidebar_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        if (!Responsive.isMobile(context))
        Expanded(
          child: Column(
            children: [
              Search(),
              SizedBox(height: kDefaultPadding),
              Categories(),
              SizedBox(height: kDefaultPadding),
              RecentPosts(),
            ],
          ),
        ),
      ],
    );
  }
}

