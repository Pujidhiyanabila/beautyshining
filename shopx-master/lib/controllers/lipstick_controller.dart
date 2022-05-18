import 'package:get/get.dart';
import 'package:shopx/models/lipstick_model.dart';
import 'package:shopx/services/remote_services.dart';

class LipstickController extends GetxController {
  var isLoading = true.obs;
  var lipstickList = List<LipstickModel>().obs;

  @override
  void onInit() {
    fetchLipstick();
    super.onInit();
  }

  void fetchLipstick() async {
    try {
      isLoading(true);
      var lipsticks = await RemoteServices.fetchLipstick();
      if (lipsticks != null) {
        lipstickList.value = lipsticks;
      }
    } finally {
      isLoading(false);
    }
  }
}
