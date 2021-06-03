import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uidemo/models/BillsResponseModel.dart';
import 'package:uidemo/pages/tabs/bills/billsDetailViewModel.dart';
import 'package:uidemo/widgets/billChart.dart';
import 'package:uidemo/widgets/billInfoCell.dart';
import 'package:uidemo/widgets/card/enelCard.dart';
import 'package:uidemo/widgets/navigationbar/navbar.dart';
import 'package:stacked/stacked.dart';

class BillsDetails extends StatefulWidget {
  final Bills bill;

  BillsDetails(this.bill);

  @override
  _BillsDetailsState createState() => _BillsDetailsState();
}

class _BillsDetailsState extends State<BillsDetails> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BillsDetailViewModel>.reactive(
      viewModelBuilder: () => BillsDetailViewModel(),
      // onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => Scaffold(
          appBar: EnelNavBar('Dettaglio', isBackButtonActive: true),
          backgroundColor: Theme.of(context).accentColor,
          body: Visibility(
              visible: viewModel.apiResponseModel.invoices.length > 0,
              child: ListView.builder(
                  itemCount: viewModel.apiResponseModel.invoices.length + 1,
                  itemBuilder: (context, index) {
                    switch (index) {
                      case 0:
                        return EnelCard(Container(
                            height: 300,
                            child: BillChart.withSampleData(viewModel
                                .apiResponseModel.invoices[index]?.title),
                            padding: EdgeInsets.all(20)));
                      default:
                        return BillInfoCell(
                            viewModel.apiResponseModel.invoices[index - 1]);
                    }
                  }))),
    );
  }
}
