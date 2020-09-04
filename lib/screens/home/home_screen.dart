import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widget/custom_bottombar.dart';
import 'widget/my_header.dart';
import 'widget/own_test.dart';
import 'widget/prevention.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: CustomBottombar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyHeader(),
          SizedBox(
            height: 32,
          ),
          Prevention(),
          SizedBox(
            height: 32,
          ),
          OwnTest(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/bell.svg'),
          onPressed: () {},
        )
      ],
    );
  }
}

