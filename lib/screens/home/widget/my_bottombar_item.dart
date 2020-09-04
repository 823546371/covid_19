import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomnarItem extends StatelessWidget {
  final String iconUrl;
  final bool check;
  final Function press;

  const MyBottomnarItem({
    Key key,
    this.iconUrl,
    this.check = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: check ? mBlueButtonColor : Colors.transparent,
        ),
        child: SvgPicture.asset(
          iconUrl,
          width: 24,
          height: 24,
          color: check ? Colors.white : mIconColor,
        ),
      ),
    );
  }
}
