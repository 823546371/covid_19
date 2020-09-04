import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventionItem extends StatelessWidget {

  final String iconUrl;
  final String text;

  const PreventionItem({
    Key key, this.iconUrl, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(iconUrl),
        SizedBox(height: 12,),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
