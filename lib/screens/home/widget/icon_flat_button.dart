import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconFlatButton extends StatelessWidget {
  final String text;
  final String iconUrl;
  final Color color;

  const IconFlatButton({
    Key key,
    this.text,
    this.iconUrl,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: color,
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(36),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconUrl),
            SizedBox(
              width: 12,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
