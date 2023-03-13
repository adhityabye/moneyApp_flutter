import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:slicing_ui/widgets/card_container.dart';

import '../utils/accent_style.dart';
import '../widgets/transaction.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cards",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Icon(Icons.arrow_forward_rounded, size: 32),
                  ],
                ),
                const Gap(20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Cards(),
                      const Gap(10),
                      Cards(),
                      const Gap(10),
                      Cards(),
                      const Gap(10),
                      Cards(),
                      const Gap(10),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Last Transactions",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        )),
                    Icon(Icons.arrow_forward_rounded, size: 32),
                  ],
                ),
                const Gap(20),
                Column(
                  children: [
                    Transaction(),
                    const Gap(20),
                    Transaction(),
                    const Gap(20),
                    Transaction(),
                    const Gap(20),
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
