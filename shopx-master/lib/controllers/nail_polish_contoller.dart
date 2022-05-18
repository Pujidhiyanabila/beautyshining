import 'package:get/get.dart';
import 'package:shopx/models/nail_polish_model.dart';
import 'package:shopx/services/remote_services.dart';

class NailPolishController extends GetxController {
  var isLoading = true.obs;
  var nailPolishList = List<NailPolishModel>().obs;

  @override
  void onInit() {
    fetchNailPolish();
    super.onInit();
  }

  void fetchNailPolish() async {
    try {
      isLoading(true);
      var nailpolishs = await RemoteServices.fetchNailPolish();
      if (nailpolishs != null) {
        nailPolishList.value = nailpolishs;
      }
    } finally {
      isLoading(false);
    }
  }
}
