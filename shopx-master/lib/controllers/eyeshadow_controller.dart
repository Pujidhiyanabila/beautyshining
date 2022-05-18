import 'package:get/get.dart';
import 'package:shopx/models/eyeshadow_model.dart';
import 'package:shopx/services/remote_services.dart';

class EyeshadowController extends GetxController {
  var isLoading = true.obs;
  var eyeshadowList = List<EyeshadowModel>().obs;

  @override
  void onInit() {
    fetchEyeshadow();
    super.onInit();
  }

  void fetchEyeshadow() async {
    try {
      isLoading(true);
      var eyeshadows = await RemoteServices.fetchEyeshadow();
      if (eyeshadows != null) {
        eyeshadowList.value = eyeshadows;
      }
    } finally {
      isLoading(false);
    }
  }
}
