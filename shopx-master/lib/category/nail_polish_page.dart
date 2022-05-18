import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shopx/common/style.dart';
import 'package:shopx/controllers/nail_polish_contoller.dart';
import 'package:shopx/views/nail_polish_tile.dart';

class NailPolishPage extends StatelessWidget {
  final NailPolishController nailPolishController = Get.put(NailPolishController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nail Polish Category"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (nailPolishController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: nailPolishController.nailPolishList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return NailPolishTile(nailPolishController.nailPolishList[index]);
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
