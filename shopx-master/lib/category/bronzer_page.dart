import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shopx/common/style.dart';
import 'package:shopx/controllers/bronzer_controller.dart';
import 'package:shopx/views/bronzer_tile.dart';

class BronzerPage extends StatelessWidget {
  final BronzerController bronzerController = Get.put(BronzerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bronzer Category"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (bronzerController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: bronzerController.bronzerList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return BronzerTile(bronzerController.bronzerList[index]);
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
