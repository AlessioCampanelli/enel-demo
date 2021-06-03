import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidemo/pages/tabs/wow/wowViewModel.dart';
import 'package:uidemo/widgets/navigationbar/navbar.dart';
import 'package:stacked/stacked.dart';
import 'package:uidemo/widgets/wowCard.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WowTab extends StatefulWidget {
  @override
  _SupportTabState createState() => _SupportTabState();
}

class _SupportTabState extends State<WowTab> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WowViewModel>.reactive(
      viewModelBuilder: () => WowViewModel(),
      // onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => Scaffold(
          appBar: EnelNavBar(AppLocalizations.of(context).wowTitle),
          backgroundColor: Theme.of(context).accentColor,
          body: Visibility(
              visible: viewModel.apiResponseModel.banners.length > 0,
              child: ListView.builder(
                  itemCount: viewModel.apiResponseModel.banners.length,
                  itemBuilder: (context, index) {
                    return WowCard(viewModel.apiResponseModel.banners[index]);
                  }))),
    );
  }
}
