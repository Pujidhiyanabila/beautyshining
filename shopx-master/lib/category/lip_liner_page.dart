import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shopx/common/style.dart';
import 'package:shopx/controllers/lip_liner_controller.dart';
import 'package:shopx/views/lip_liner_tile.dart';

class LipLinerPage extends StatelessWidget {
  final LipLinerController lipLinerController = Get.put(LipLinerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lip Liner Category"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (lipLinerController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: lipLinerController.lipLinerList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return LipLinerTile(lipLinerController.lipLinerList[index]);
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
