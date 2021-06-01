import 'package:flutter/material.dart';
import 'package:uidemo/pages/tabs/bills/BillsViewModel.dart';
import 'package:uidemo/pages/tabs/bills/details.dart';
import 'package:uidemo/widgets/billChart.dart';
import 'package:uidemo/widgets/carousel.dart';
import 'package:uidemo/widgets/consumptionChart.dart';
import 'package:uidemo/widgets/card/enelCard.dart';
import 'package:uidemo/widgets/newProvisioning.dart';
import 'package:stacked/stacked.dart';

class BillsTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<BillsTab>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  ScrollController _scrollController;
  double _listviewTopPadding = 400;

  final data = [
    new OrdinalSales('2018', 5),
    new OrdinalSales('2019', 55),
    new OrdinalSales('2020', 100),
    new OrdinalSales('2021', 75),
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  _scrollListener() {
    var offset = _listviewTopPadding - _scrollController.offset;
    if (_scrollController.offset > 0 && offset > 0) {
      _listviewTopPadding -= _scrollController.offset;
      setState(() {});
    }

    // var offsetToBottom = _listviewTopPadding + _scrollController.offset;
    if (_scrollController.offset < 0) {
      // offsetToBottom = offsetToBottom > 400 ? 400 : offsetToBottom;
      _listviewTopPadding = 400;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BillsViewModel>.reactive(
      viewModelBuilder: () => BillsViewModel(),
      // onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: Visibility(
            visible: viewModel.apiResponseModel.bills != null &&
                viewModel.apiResponseModel.bills.length > 0,
            child: Stack(children: [
              Positioned(
                  child: Padding(
                padding: EdgeInsets.only(top: 80),
                child: Carousel(),
              )),
              Positioned(
                  child: Container(
                      padding: EdgeInsets.only(top: _listviewTopPadding),
                      child: Container(
                        color: Theme.of(context).backgroundColor,
                        child: ListView.builder(
                            controller: _scrollController,
                            itemCount:
                                viewModel.apiResponseModel.bills.length + 1,
                            itemBuilder: (context, index) {
                              switch (index) {
                                case 0:
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => BillsDetails(),
                                        ),
                                      );
                                    },
                                    child: EnelCard(Container(
                                        height: 300,
                                        child: BillChart.withSampleData(
                                            viewModel.apiResponseModel
                                                .bills[index]?.title),
                                        padding: EdgeInsets.all(20))),
                                  );
                                case 1:
                                  return GestureDetector(
                                    onTap: () {},
                                    child: EnelCard(Container(
                                      padding: EdgeInsets.all(20),
                                      height:
                                          300, // MediaQuery.of(context).size.height / 2.3,
                                      alignment: Alignment.topCenter,
                                      child: Opacity(
                                        opacity: 0.9,
                                        child:
                                            ConsumptionChart.withSampleData(),
                                      ),
                                    )),
                                  );
                                case 2:
                                  return NewProvisioning();
                                default:
                                  return NewProvisioning();
                              }
                            }),
                      )))
            ]),
          )),
    );
  }

  /*return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(children: [
          Positioned(
              child: Padding(
            padding: EdgeInsets.only(top: 80),
            child: Carousel(),
          )),
          Positioned(
              child: Container(
                  padding: EdgeInsets.only(top: _listviewTopPadding),
                  child: Container(
                    color: Theme.of(context).backgroundColor,
                    child: ListView.builder(
                        controller: _scrollController,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => BillsDetails(),
                                    ),
                                  );
                                },
                                child: EnelCard(Container(
                                    height: 300,
                                    child: BillChart.withSampleData(),
                                    padding: EdgeInsets.all(20))),
                              );
                            case 1:
                              return GestureDetector(
                                onTap: () {},
                                child: EnelCard(Container(
                                  padding: EdgeInsets.all(20),
                                  height:
                                      300, // MediaQuery.of(context).size.height / 2.3,
                                  alignment: Alignment.topCenter,
                                  child: Opacity(
                                    opacity: 0.9,
                                    child: ConsumptionChart.withSampleData(),
                                  ),
                                )),
                              );
                            case 2:
                              return NewProvisioning();
                            default:
                              return NewProvisioning();
                          }
                        }),
                  )))
        ])); 
  } */
}
