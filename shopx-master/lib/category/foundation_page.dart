import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shopx/common/style.dart';
import 'package:shopx/controllers/foundation_controller.dart';
import 'package:shopx/views/foundations_tile.dart';

class FoundationPage extends StatelessWidget {
  final FoundationController foundationController = Get.put(FoundationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foundation Category"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (foundationController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: foundationController.foundationList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return FoundationTile(foundationController.foundationList[index]);
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
