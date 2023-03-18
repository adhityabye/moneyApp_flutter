import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:slicing_ui/widgets/limits_card.dart';

import '../utils/accent_style.dart';

class Limitspage extends StatelessWidget {
  const Limitspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/byeu.png'),
                    ),
                    Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Balance",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade600),
                        ),
                        Text(
                          "AED 4830.00",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Gap(110),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.search, size: 32),
                      ],
                    ),
                    const Gap(10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.notifications, size: 32),
                      ],
                    ),
                  ],
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Limits",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Gap(5),
                Row(
                  children: [
                    Text(
                      "Set limit to save money every month",
                      style: Styles.headLineStyle4,
                    ),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LimitsCard(
                      title: "Health",
                      subtitle: "AED 450/1500",
                      percentage: 0.489,
                    ),
                    const Gap(10),
                    LimitsCard(
                      title: "Fund Transfer",
                      subtitle: "AED 450/1500",
                      percentage: 0.889,
                    ),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LimitsCard(
                      title: "Food",
                      subtitle: "AED 450/1500",
                      percentage: 0.519,
                    ),
                    const Gap(10),
                    LimitsCard(
                      title: "Online Shopping",
                      subtitle: "AED 450/1500",
                      percentage: 0.289,
                    ),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LimitsCard(
                      title: "Fuel",
                      subtitle: "AED 450/1500",
                      percentage: 0.689,
                    ),
                    const Gap(10),
                    LimitsCard(
                      title: "Travel",
                      subtitle: "AED 450/1500",
                      percentage: 0.359,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
