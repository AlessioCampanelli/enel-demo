import 'package:uidemo/models/BillsDetailResponseModel.dart';
import 'package:uidemo/models/BillsResponseModel.dart';

class NetworkingResponse {}

class NetworkingException extends NetworkingResponse {
  String message;
  NetworkingException(this.message);
}

class NetworkingResponseData extends NetworkingResponse {
  BillsResponseModel apiResponseModel;
  NetworkingResponseData(this.apiResponseModel);
}

class NetworkingBillDetailResponseData extends NetworkingResponse {
  BillDetailResponseModel apiResponseModel;
  NetworkingBillDetailResponseData(this.apiResponseModel);
}
