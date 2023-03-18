import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:slicing_ui/utils/accent_style.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

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
                    Icon(Icons.playlist_add_check_outlined, size: 32),
                  ],
                ),
                const Gap(20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    LinearPercentIndicator(
                        addAutomaticKeepAlive: true,
                        width: 350.0,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 80.0,
                        percent: 0.375,
                        backgroundColor: Colors.grey.shade300,
                        center: Text(
                          "Apartement\n 4.500/12.000",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.grey.shade800),
                        ),
                        barRadius: Radius.circular(15),
                        progressColor: primary),
                    const Gap(20),
                    LinearPercentIndicator(
                        addAutomaticKeepAlive: true,
                        width: 350.0,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 80.0,
                        percent: 0.708,
                        backgroundColor: Colors.grey.shade300,
                        center: Text(
                          "Shopping\n AED 850/1200",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.grey.shade800),
                        ),
                        barRadius: Radius.circular(15),
                        progressColor: primary),
                    const Gap(20),
                    LinearPercentIndicator(
                        addAutomaticKeepAlive: true,
                        width: 350.0,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 80.0,
                        percent: 0.375,
                        backgroundColor: Colors.grey.shade300,
                        center: Text(
                          "Holiday\n AED 3000/8000",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.grey.shade800),
                        ),
                        barRadius: Radius.circular(15),
                        progressColor: primary),
                  ],
                ),
                const Gap(20),
                Column(
                  children: [
                    Container(
                      width: 330,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: Row(
                        children: [],
                      ),
                    )
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
