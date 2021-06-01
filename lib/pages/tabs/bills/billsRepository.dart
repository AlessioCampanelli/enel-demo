import 'package:uidemo/networking/NetworkRepo.dart';
import 'package:uidemo/model/NetworkingResponse.dart';

class BillsRepository {
  Future<NetworkingResponse> getBills() {
    return NetworkRepo().getBills();
  }
}
