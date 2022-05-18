import 'package:get/get.dart';
import 'package:shopx/models/bronzer_model.dart';
import 'package:shopx/services/remote_services.dart';

class BronzerController extends GetxController {
  var isLoading = true.obs;
  var bronzerList = List<BronzerModel>().obs;

  @override
  void onInit() {
    fetchBronzer();
    super.onInit();
  }

  void fetchBronzer() async {
    try {
      isLoading(true);
      var bronzers = await RemoteServices.fetchBronzer();
      if (bronzers != null) {
        bronzerList.value = bronzers;
      }
    } finally {
      isLoading(false);
    }
  }
}
