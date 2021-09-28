import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';


//--------------------------LineChart--------------------
class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    kPrimaryColor,
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minX: 0,
          maxX: 30,
          minY: 0,
          maxY: 6,
          titlesData: FlTitlesData(
            show: true,
            topTitles: SideTitles(showTitles: false),
            rightTitles: SideTitles(showTitles: false),
            leftTitles: SideTitles(showTitles: true),
            bottomTitles: SideTitles(showTitles: true
                // reservedSize: 35,
                // getTitles: (value) {
                //   if (value.toInt() % 2 != 0) {
                //     return (value.toInt()).toString();
                //   } else {
                //     return ' ';
                //   }
                //   // switch (value.toInt()) {
                //   //   case 2:
                //   //     return 'MAR';
                //   //   case 5:
                //   //     return 'JUN';
                //   //   case 8:
                //   //     return 'SEP';
                //   // }
                //   // return '';
                // // },
                // // interval: 1,
                // margin: 8,
                ),
          ),
          gridData: FlGridData(
            drawVerticalLine: false,
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(5.6, 2),
                FlSpot(8.9, 5),
                FlSpot(14.8, 2.5),
                FlSpot(16, 4),
                FlSpot(19.5, 3),
                FlSpot(21, 4),
              ],
              isCurved: true,
              colors: gradientColors,
              dotData: FlDotData(show: false),
            ),
          ],
        ),
      );
}

//------------------------PieChart-------------------------

class PieChartWidget extends StatefulWidget {
  @override
  _PieChartWidgetState createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  var touchedIndex;
  var size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PieChart(
        PieChartData(
          centerSpaceRadius: 0,
          startDegreeOffset: 270,
          sectionsSpace: 0,
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection.touchedSectionIndex;
              });
            },
          ),
          sections: [
            PieChartSectionData(
                radius: 85, color: Color(0xff4880FF), value: 40, title: '40 %'),
            PieChartSectionData(
                radius: 80, color: Color(0xffEB5EBD), value: 60, title: '60 %'),
          ],
        ),
      ),
    );
  }
}
