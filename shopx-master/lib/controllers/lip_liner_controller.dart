import 'package:get/get.dart';
import 'package:shopx/models/lip_liner_model.dart';
import 'package:shopx/services/remote_services.dart';

class LipLinerController extends GetxController {
  var isLoading = true.obs;
  var lipLinerList = List<LipLinerModel>().obs;

  @override
  void onInit() {
    fetchLipLiner();
    super.onInit();
  }

  void fetchLipLiner() async {
    try {
      isLoading(true);
      var lipliners = await RemoteServices.fetchLipLiner();
      if (lipliners != null) {
        lipLinerList.value = lipliners;
      }
    } finally {
      isLoading(false);
    }
  }
}
