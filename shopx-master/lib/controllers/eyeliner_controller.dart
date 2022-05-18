import 'package:get/get.dart';
import 'package:shopx/models/eyeliner_model.dart';
import 'package:shopx/services/remote_services.dart';

class EyelinerController extends GetxController {
  var isLoading = true.obs;
  var eyelinerList = List<EyelinerModel>().obs;

  @override
  void onInit() {
    fetchEyeliner();
    super.onInit();
  }

  void fetchEyeliner() async {
    try {
      isLoading(true);
      var eyeliners = await RemoteServices.fetchEyeliner();
      if (eyeliners != null) {
        eyelinerList.value = eyeliners;
      }
    } finally {
      isLoading(false);
    }
  }
}
