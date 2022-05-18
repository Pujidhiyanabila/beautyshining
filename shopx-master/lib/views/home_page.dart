import 'package:flutter/material.dart';
import 'package:shopx/common/style.dart';
import 'package:shopx/controllers/product_controller.dart';
import 'package:shopx/views/drawer_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shopx/views/product_tile.dart';

class HomePage extends StatelessWidget {
  final ProductsController productsController = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beauty Shining"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      drawer: DrawerPage(),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (productsController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: productsController.productsList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return ProductsTile(productsController.productsList[index]);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                );
            }),
          )
        ],
      ),
    );
  }
}