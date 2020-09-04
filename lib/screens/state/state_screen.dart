import 'package:covid_19/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widget/country_and_global.dart';
import 'widget/covid_number.dart';
import 'widget/day.dart';

class StateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'Statistics',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CountryAndGlobal(),
          SizedBox(
            height: 24,
          ),
          Day(),
          SizedBox(
            height: 24,
          ),
          CovidNumber(),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40, left: 24, right: 24),
                  child: Text(
                    'Daily New Cases',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  height: 260,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 24),
                  child: BarChart(
                    buildBarChartData(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  BarChartData buildBarChartData() {
    return BarChartData(
      alignment: BarChartAlignment.spaceAround,
      maxY: 22,
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Color(0xFFDFE3F2),
            width: 1,
          ),
          left: BorderSide(
            color: Colors.transparent,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      gridData: FlGridData(
        checkToShowHorizontalLine: (value) {
          switch (value.toInt()) {
            case 0:
              return true;
            case 5:
              return true;
            case 10:
              return true;
            case 15:
              return true;
            case 20:
              return true;
            default:
              return false;
          }
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
              color: Color(0xFFDFE3F2), strokeWidth: 1, dashArray: [5, 3]);
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          textStyle: TextStyle(
            color: mIconColor,
            fontSize: 12,
          ),
          margin: 6,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Apr 1';
              case 1:
                return 'Apr 2';
              case 2:
                return 'Apr 3';
              case 3:
                return 'Apr 4';
              case 4:
                return 'Apr 5';
              case 5:
                return 'Apr 6';
              case 6:
                return 'Apr 7';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: TextStyle(
            color: mIconColor,
            fontSize: 12,
          ),
          margin: 6,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return '0k';
              case 5:
                return '5k';
              case 10:
                return '10k';
              case 15:
                return '15k';
              case 20:
                return '20k';

              default:
                return '';
            }
          },
        ),
      ),
      barGroups: [
        BarChartGroupData(
          x: 0,

          barRods: [BarChartRodData(y: 5, color: mChartColor)],
          // showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [BarChartRodData(y: 9, color: mChartColor)],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [BarChartRodData(y: 8, color: mChartColor)],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [BarChartRodData(y: 14, color: mChartColor)],
        ),
        BarChartGroupData(
          x: 4,
          barRods: [BarChartRodData(y: 10, color: mChartColor)],
        ),
        BarChartGroupData(
          x: 5,
          barRods: [BarChartRodData(y: 15, color: mChartColor)],
        ),
        BarChartGroupData(
          x: 6,
          barRods: [BarChartRodData(y: 18, color: mChartColor)],
        ),
      ],
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
