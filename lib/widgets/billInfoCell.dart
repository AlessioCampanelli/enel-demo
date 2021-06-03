import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:uidemo/models/BillsDetailResponseModel.dart';

class BillInfoCell extends StatelessWidget {
  final Invoice invoice;

  BillInfoCell(this.invoice);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).backgroundColor),
      height: 90,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                invoice.title,
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.start,
              ),
              Spacer(),
              Padding(padding: EdgeInsets.all(20)),
              Text(
                NumberFormat.currency(locale: 'eu').format(invoice.amount),
                style: Theme.of(context).textTheme.subtitle2,
                textAlign: TextAlign.end,
              )
            ],
          ),
          Text(
            'Scaduta il ${invoice.expiration}',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline5,
          )
        ],
      ),
    );
  }
}
