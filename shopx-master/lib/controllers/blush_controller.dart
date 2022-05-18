import 'package:get/get.dart';
import 'package:shopx/models/blush_model.dart';
import 'package:shopx/services/remote_services.dart';

class BlushController extends GetxController {
  var isLoading = true.obs;
  var blushList = List<BlushModel>().obs;

  @override
  void onInit() {
    fetchBlush();
    super.onInit();
  }

  void fetchBlush() async {
    try {
      isLoading(true);
      var blushs = await RemoteServices.fetchBlush();
      if (blushs != null) {
        blushList.value = blushs;
      }
    } finally {
      isLoading(false);
    }
  }
}
