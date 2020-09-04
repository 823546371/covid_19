import 'package:covid_19/screens/state/state_screen.dart';
import 'package:flutter/material.dart';

import 'my_bottombar_item.dart';

class CustomBottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyBottomnarItem(
              iconUrl: 'assets/icons/home.svg',
              check: true,
              press: () {},
            ),
            MyBottomnarItem(
              iconUrl: 'assets/icons/stats.svg',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StateScreen();
                    },
                  ),
                );
              },
            ),
            MyBottomnarItem(
              iconUrl: 'assets/icons/newspaper.svg',
              press: () {},
            ),
            MyBottomnarItem(
              iconUrl: 'assets/icons/info.svg',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
