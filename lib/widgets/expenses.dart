import 'package:flutter/material.dart';
import 'package:neumorphic_dashboard/config/colors.dart';
import 'package:neumorphic_dashboard/config/strings.dart';
import 'package:neumorphic_dashboard/widgets/pie_chart.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Expenses', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: SingleChildScrollView  (
                  scrollDirection: Axis.horizontal,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: category
                          .map((e) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(children: <Widget>[
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        AppColors.pieColors[category.indexOf(e)],
                                  ),SizedBox(width: 5,),
                                  Text(e['name'], style: TextStyle(fontSize: 18, ),),
                                ]),
                          ))
                          .toList()),
                ),
              ),
              flex: 5,
            ),
            Expanded(child: PieChart(), flex: 6)
          ],
        ),
      ],
    );
  }
}
