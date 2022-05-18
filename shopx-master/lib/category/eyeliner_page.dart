import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shopx/common/style.dart';
import 'package:shopx/controllers/eyeliner_controller.dart';
import 'package:shopx/views/eyeliner_tile.dart';

class EyelinerPage extends StatelessWidget {
  final EyelinerController eyelinerController = Get.put(EyelinerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eyeliner Category"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (eyelinerController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: eyelinerController.eyelinerList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return EyelinerTile(eyelinerController.eyelinerList[index]);
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
