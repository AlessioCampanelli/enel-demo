import 'package:flutter/material.dart';
import 'package:uidemo/models/WowResponseModel.dart';
import 'package:uidemo/networking/bills/NetworkingBillsResponse.dart';
import 'package:uidemo/networking/wow/NetworkingWowResponse.dart';
import 'package:uidemo/pages/tabs/wow/wowRepository.dart';

class WowViewModel extends ChangeNotifier {
  WowResponseModel apiResponseModel = new WowResponseModel();
  String messageToShow = "";
  bool isLoading = false;

  WowViewModel() {
    callAPI();
    apiResponseModel.banners = [];
  }

  void callAPI() async {
    isLoading = true;
    notifyListeners();
    NetworkingResponse networkingResponse = await WowRepository().getWow();

    if (networkingResponse is NetworkingWowResponseData) {
      apiResponseModel = networkingResponse.apiResponseModel;
    } else if (networkingResponse is NetworkingException) {
      messageToShow = networkingResponse.message;
    }

    isLoading = false;
    notifyListeners();
  }
}
