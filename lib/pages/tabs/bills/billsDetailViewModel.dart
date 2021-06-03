import 'package:flutter/material.dart';
import 'package:uidemo/models/BillsDetailResponseModel.dart';
import 'package:uidemo/networking/bills/NetworkingBillsResponse.dart';
import 'package:uidemo/pages/tabs/bills/billsRepository.dart';

class BillsDetailViewModel extends ChangeNotifier {
  BillDetailResponseModel apiResponseModel = new BillDetailResponseModel();
  String messageToShow = "";
  bool isLoading = false;

  BillsDetailViewModel() {
    apiResponseModel.invoices = [];
    callAPI();
  }

  void callAPI() async {
    isLoading = true;
    notifyListeners();
    NetworkingResponse networkingResponse =
        await BillsRepository().getBillsDetail();

    if (networkingResponse is NetworkingBillDetailResponseData) {
      apiResponseModel = networkingResponse.apiResponseModel;
    } else if (networkingResponse is NetworkingException) {
      messageToShow = networkingResponse.message;
    }

    isLoading = false;
    notifyListeners();
  }
}
