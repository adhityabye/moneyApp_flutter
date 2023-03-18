import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:slicing_ui/utils/accent_style.dart';
import 'package:slicing_ui/widgets/cashback_container.dart';

class CashBackPage extends StatelessWidget {
  const CashBackPage({super.key});

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
                      "Wallet",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        print("Hellow World");
                      },
                      child: Text("Receive"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor: MaterialStateProperty.all(primary),
                        side: MaterialStateProperty.all(
                          BorderSide(color: primary, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "April",
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                    const Gap(20),
                    CashBack(
                      title: "Fund Transfer",
                      percentage: "20%",
                      isColor: true,
                    ),
                    const Gap(10),
                    CashBack(
                        title: "Online Shopping",
                        percentage: "43%",
                        isColor: false),
                    const Gap(10),
                    CashBack(title: "Food", percentage: "65%", isColor: false),
                    const Gap(10),
                    CashBack(title: "Fuel", percentage: "37%", isColor: false),
                    const Gap(30),
                    Row(
                      children: [
                        Text(
                          "March",
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                    const Gap(20),
                    CashBack(
                        title: "Health", percentage: "20%", isColor: false),
                    const Gap(10),
                    CashBack(
                        title: "Travel", percentage: "16%", isColor: false),
                    const Gap(10),
                    CashBack(
                        title: "Fund Transfer",
                        percentage: "20%",
                        isColor: false),
                    const Gap(10),
                    CashBack(
                        title: "Fund Transfer",
                        percentage: "19%",
                        isColor: false),
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
