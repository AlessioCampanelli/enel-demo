import 'package:uidemo/networking/NetworkRepo.dart';
import 'package:uidemo/networking/bills/NetworkingBillsResponse.dart';

class BillsRepository {
  Future<NetworkingResponse> getBills() {
    return NetworkRepo().getBills();
  }

  Future<NetworkingResponse> getBillsDetail() {
    return NetworkRepo().getBillsDetail();
  }
}
