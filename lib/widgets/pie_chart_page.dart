import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:midraise/widgets/pie_chart_sections.dart';
import 'indicators_widget.dart';

class PieChartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartPageState();
}

class PieChartPageState extends State {
  late int touchedIndex = 1;

  @override
  Widget build(BuildContext context) =>
      ListView(padding: EdgeInsets.symmetric(vertical: 10), children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.wallet,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Balance",
                        style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 20),
                      )
                    ],
                  ),
                  Text("20,999 INR",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              ),
            ),
            Row()
          ],
        ),
        Container(
          height: 300,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(),
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: getSections(touchedIndex),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: IndicatorsWidget(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]);
}
