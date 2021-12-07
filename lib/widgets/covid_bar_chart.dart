import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CovidBarChart extends StatelessWidget {
  final List<double> covidCases;

  const CovidBarChart({required this.covidCases});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Container(
            //   padding: const EdgeInsets.all(20.0),
            //   alignment: Alignment.centerLeft,
            //   child: Text(
            //     'Daily New Cases',
            //     style: const TextStyle(
            //       fontSize: 22.0,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 300,
              // color: Colors.red,
              child: BarChart(
                BarChartData(
                  maxY: 16,
                  // alignment: BarChartAlignment.spaceBetween,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                      margin: 10,
                      showTitles: true,
                      rotateAngle: 35,
                      getTitles: (double value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'May24';
                          case 1:
                            return 'May25';
                          case 2:
                            return 'May26';
                          case 3:
                            return 'May27';
                          case 4:
                            return 'May28';
                          case 5:
                            return 'May29';
                          case 6:
                            return 'May30';
                          default:
                            return '';
                        }
                      },
                    ),
                    leftTitles: SideTitles(
                      margin: 10,
                      showTitles: true,
                      getTitles: (value) {
                        if (value == 0) {
                          return '0';
                        } else if (value % 3 == 0) {
                          return '${value ~/ 3 * 5}K';
                        }
                        return '';
                      },
                    ),
                    topTitles: SideTitles(
                      margin: 10,
                      showTitles: true,
                      getTitles: (value) {
                        if (value == 0) {
                          return '';
                        }
                        return '';
                      },
                    ),
                    rightTitles: SideTitles(
                      margin: 10,
                      showTitles: true,
                      getTitles: (value) {
                        if (value == 0) {
                          return '';
                        }
                        return '';
                      },
                    ),
                  ),
                  gridData: FlGridData(
                    show: true,
                    checkToShowHorizontalLine: (value) => value % 3 == 0,
                    getDrawingHorizontalLine: (value) => FlLine(
                      color: Colors.black12,
                      strokeWidth: 1.0,
                      dashArray: [5],
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: covidCases
                      .asMap()
                      .map(
                        (key, value) => MapEntry(
                          key,
                          BarChartGroupData(
                            x: key,
                            barRods: [
                              BarChartRodData(
                                y: value,
                                colors: [Colors.red],
                              ),
                            ],
                          ),
                        ),
                      )
                      .values
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
