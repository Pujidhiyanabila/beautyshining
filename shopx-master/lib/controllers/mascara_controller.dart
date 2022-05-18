import 'package:get/get.dart';
import 'package:shopx/models/mascara_model.dart';
import 'package:shopx/services/remote_services.dart';

class MascaraController extends GetxController {
  var isLoading = true.obs;
  var mascaraList = List<MascaraModel>().obs;

  @override
  void onInit() {
    fetchMascara();
    super.onInit();
  }

  void fetchMascara() async {
    try {
      isLoading(true);
      var mascaras = await RemoteServices.fetchMascara();
      if (mascaras != null) {
        mascaraList.value = mascaras;
      }
    } finally {
      isLoading(false);
    }
  }
}
