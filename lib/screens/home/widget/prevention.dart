import 'package:flutter/material.dart';

import 'prevention_item.dart';

class Prevention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Prevention',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PreventionItem(
                iconUrl: 'assets/icons/avoid_close_contact.svg',
                text: 'Avoid close\ncontact',
              ),
              PreventionItem(
                iconUrl: 'assets/icons/clean_hands.svg',
                text: 'Clean your\nhands often',
              ),
              PreventionItem(
                iconUrl: 'assets/icons/wear_facemask.svg',
                text: 'Wear a\nfacemask',
              )
            ],
          )
        ],
      ),
    );
  }
}

