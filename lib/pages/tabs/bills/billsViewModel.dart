import 'package:flutter/material.dart';
import 'package:uidemo/models/BillsResponseModel.dart';
import 'package:uidemo/networking/bills/NetworkingBillsResponse.dart';
import 'package:uidemo/pages/tabs/bills/billsRepository.dart';

class BillsViewModel extends ChangeNotifier {
  BillsResponseModel apiResponseModel = new BillsResponseModel();
  String messageToShow = "";
  bool isLoading = false;

  BillsViewModel() {
    callAPI();
  }

  void callAPI() async {
    isLoading = true;
    notifyListeners();
    NetworkingResponse networkingResponse = await BillsRepository().getBills();

    if (networkingResponse is NetworkingResponseData) {
      apiResponseModel = networkingResponse.apiResponseModel;
    } else if (networkingResponse is NetworkingException) {
      messageToShow = networkingResponse.message;
    }

    isLoading = false;
    notifyListeners();
  }
}
