import 'package:flutter/material.dart';
import 'package:neumorphic_dashboard/config/colors.dart';
import 'package:neumorphic_dashboard/config/size.dart';
import 'package:neumorphic_dashboard/widgets/card_section.dart';
import 'package:neumorphic_dashboard/widgets/expenses.dart';
import 'package:neumorphic_dashboard/widgets/header.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(fontFamily: 'Circular'),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Column(
        
        children: [
        
          Container(
            height: SizeConfig.getHeight(context) * 0.15,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection()),
        ],
      ),
    );
  }
}
