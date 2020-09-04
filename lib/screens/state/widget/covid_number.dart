import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';

import 'number_card.dart';

class CovidNumber extends StatelessWidget {
  const CovidNumber({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Expanded(
                child: NumberCard(
                  text: 'Affected',
                  number: '336,851',
                  color: mAffectedColor,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: NumberCard(
                  text: 'Death',
                  number: '9,620',
                  color: mDeathColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Expanded(
                child: NumberCard(
                  text: 'Recovered',
                  number: '17,977',
                  color: mRecoveredColor,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: NumberCard(
                  text: 'Active',
                  number: '301,251',
                  color: mActiveColor,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: NumberCard(
                  text: 'Serious',
                  number: '8,702',
                  color: mSeriousColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
