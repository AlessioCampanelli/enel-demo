import 'package:flutter/material.dart';
import 'package:uidemo/pages/tabs/bills/details.dart';
import 'package:uidemo/widgets/billChart.dart';
import 'package:uidemo/widgets/consumptionChart.dart';
import 'package:uidemo/widgets/newProvisioning.dart';

class BillsTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<BillsTab>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final data = [
    new OrdinalSales('2014', 5),
    new OrdinalSales('2015', 25),
    new OrdinalSales('2016', 100),
    new OrdinalSales('2017', 75),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BillsDetails(),
              ),
            );
          },
          child: Card(
            elevation: 15,
            child: Container(
                height: 250,
                child: BillChart.withSampleData(),
                padding: EdgeInsets.all(20)),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Card(
            elevation: 15,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 250, // MediaQuery.of(context).size.height / 2.3,
              alignment: Alignment.topCenter,
              child: Opacity(
                opacity: 0.9,
                child: ConsumptionChart.withSampleData(),
              ),
            ),
          ),
        ),
        NewProvisioning()
      ],
    );
  }
}
