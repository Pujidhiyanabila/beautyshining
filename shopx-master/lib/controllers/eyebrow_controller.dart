import 'package:get/get.dart';
import 'package:shopx/models/eyebrow_model.dart';
import 'package:shopx/services/remote_services.dart';

class EyebrowController extends GetxController {
  var isLoading = true.obs;
  var eyebrowList = List<EyebrowModel>().obs;

  @override
  void onInit() {
    fetchEyebrow();
    super.onInit();
  }

  void fetchEyebrow() async {
    try {
      isLoading(true);
      var eyebrows = await RemoteServices.fetchEyebrow();
      if (eyebrows != null) {
        eyebrowList.value = eyebrows;
      }
    } finally {
      isLoading(false);
    }
  }
}
