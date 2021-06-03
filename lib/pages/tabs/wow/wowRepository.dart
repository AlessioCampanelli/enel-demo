import 'package:uidemo/networking/NetworkRepo.dart';
import 'package:uidemo/networking/bills/NetworkingBillsResponse.dart';

class WowRepository {
  Future<NetworkingResponse> getWow() {
    return NetworkRepo().getWow();
  }
}
