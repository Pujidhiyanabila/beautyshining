import 'package:get/get.dart';
import 'package:shopx/models/foundation_model.dart';
import 'package:shopx/services/remote_services.dart';

class FoundationController extends GetxController {
  var isLoading = true.obs;
  var foundationList = List<FoundationModel>().obs;

  @override
  void onInit() {
    fetchFoundation();
    super.onInit();
  }

  void fetchFoundation() async {
    try {
      isLoading(true);
      var foundations = await RemoteServices.fetchFoundation();
      if (foundations != null) {
        foundationList.value = foundations;
      }
    } finally {
      isLoading(false);
    }
  }
}
