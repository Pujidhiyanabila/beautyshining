import 'package:get/get.dart';
import 'package:shopx/models/product_model.dart';
import 'package:shopx/services/remote_services.dart';

class ProductsController extends GetxController {
  var isLoading = true.obs;
  var productsList = List<ProductsModel>().obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var nailpolishs = await RemoteServices.fetchProduct();
      if (nailpolishs != null) {
        productsList.value = nailpolishs;
      }
    } finally {
      isLoading(false);
    }
  }
}
