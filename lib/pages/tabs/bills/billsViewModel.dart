import 'package:flutter/material.dart';
import 'package:uidemo/model/APIResponseModel.dart';
import 'package:uidemo/pages/tabs/bills/billsRepository.dart';
import 'package:uidemo/model/NetworkingResponse.dart';

class BillsViewModel extends ChangeNotifier {
  APIResponseModel apiResponseModel = new APIResponseModel();
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
