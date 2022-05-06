import 'package:blog_news/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controllers/MenuController.dart';
import '../home/home_screen.dart';
import 'components/header.dart';
import 'components/side_menu.dart';
import 'components/web_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}

