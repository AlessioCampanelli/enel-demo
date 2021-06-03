import 'package:uidemo/models/WowResponseModel.dart';
import 'package:uidemo/networking/bills/NetworkingBillsResponse.dart';

class NetworkingWowResponseData extends NetworkingResponse {
  WowResponseModel apiResponseModel;
  NetworkingWowResponseData(this.apiResponseModel);
}
