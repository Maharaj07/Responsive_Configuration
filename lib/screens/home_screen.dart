import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../core/responsive_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = ResponsiveConfig.screenOrientation(context);

    return Scaffold(
      appBar: AppBar(title: Text("Home", style: TextStyle(fontSize: ResponsiveConfig.font(context, 20)))),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(
                  height: orientation == Orientation.portrait ? 250 : 200,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: LineChart(
                        LineChartData(
                          gridData: FlGridData(show: false),
                          titlesData: FlTitlesData(show: false),
                          borderData: FlBorderData(show: false),
                          lineBarsData: [
                            LineChartBarData(
                              spots: const [
                                FlSpot(0, 1),
                                FlSpot(1, 3),
                                FlSpot(2, 2),
                                FlSpot(3, 5),
                                FlSpot(4, 3.5),
                                FlSpot(5, 4),
                              ],
                              isCurved: true,
                              color: Colors.blue,
                              barWidth: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                GridView.count(
                  crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: List.generate(6, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[100 * ((index % 8) + 1)],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Box ${index + 1}",
                          style: TextStyle(
                            fontSize: ResponsiveConfig.font(context, 16),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
