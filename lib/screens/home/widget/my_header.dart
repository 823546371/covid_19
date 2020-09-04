import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';

import 'country_dropdown_button.dart';
import 'icon_flat_button.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
      decoration: BoxDecoration(
        color: mBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(36),
          bottomLeft: Radius.circular(36),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Covid-19',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CountryDropdownButton()
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Are you feeling sick?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'If you feel sick with any of covid-19 symptoms '
            '\nplease call or SMS us immediately for help.',
            style:
                TextStyle(color: Colors.white, fontSize: 14, height: 1.5),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: IconFlatButton(
                  iconUrl: 'assets/icons/phone.svg',
                  color: mRedButtonColor,
                  text: 'Call Now',
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: IconFlatButton(
                  iconUrl: 'assets/icons/message.svg',
                  color: mBlueButtonColor,
                  text: 'Send SMS',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

