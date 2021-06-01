import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uidemo/config/endpoint.dart';
import 'package:uidemo/model/APIResponseModel.dart';
import 'package:uidemo/model/NetworkingResponse.dart';

//call networking, parsing and errors handling

class NetworkRepo {
  Future<NetworkingResponse> getBills() async {
    try {
      var response = await http.get(Uri.parse(BILLS_URL));
      var parsedJson = await json.decode(response.body);
      APIResponseModel apiResponseModel = APIResponseModel.fromJson(parsedJson);
      return NetworkingResponseData(apiResponseModel);
    } catch (exception) {
      return NetworkingException(exception.toString());
    }
  }
}
