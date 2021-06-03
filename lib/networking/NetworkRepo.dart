import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uidemo/config/endpoint.dart';
import 'package:uidemo/models/BillsDetailResponseModel.dart';
import 'package:uidemo/models/BillsResponseModel.dart';
import 'package:uidemo/models/WowResponseModel.dart';
import 'package:uidemo/networking/bills/NetworkingBillsResponse.dart';
import 'package:uidemo/networking/wow/NetworkingWowResponse.dart';

//call networking, parsing and errors handling

class NetworkRepo {
  Future<NetworkingResponse> getBills() async {
    try {
      var response = await http.get(Uri.parse(BILLS_URL));
      var parsedJson = await json.decode(response.body);
      BillsResponseModel apiResponseModel =
          BillsResponseModel.fromJson(parsedJson);
      return NetworkingResponseData(apiResponseModel);
    } catch (exception) {
      return NetworkingException(exception.toString());
    }
  }

  Future<NetworkingResponse> getBillsDetail() async {
    try {
      var response = await http.get(Uri.parse(BILLS_DETAIL_URL));
      var parsedJson = await json.decode(response.body);
      BillDetailResponseModel apiResponseModel =
          BillDetailResponseModel.fromJson(parsedJson);
      return NetworkingBillDetailResponseData(apiResponseModel);
    } catch (exception) {
      return NetworkingException(exception.toString());
    }
  }

  Future<NetworkingResponse> getWow() async {
    try {
      var response = await http.get(Uri.parse(WOW_URL));
      var parsedJson = await json.decode(response.body);
      WowResponseModel apiResponseModel = WowResponseModel.fromJson(parsedJson);
      return NetworkingWowResponseData(apiResponseModel);
    } catch (exception) {
      return NetworkingException(exception.toString());
    }
  }
}
