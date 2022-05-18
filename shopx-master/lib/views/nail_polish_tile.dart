import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/models/nail_polish_model.dart';

class NailPolishTile extends StatelessWidget {
  final NailPolishModel nailPolishModel;
  const NailPolishTile(this.nailPolishModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    nailPolishModel.imageLink,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Obx(() => CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: nailPolishModel.isFavorite.value
                              ? Icon(Icons.favorite_rounded)
                              : Icon(Icons.favorite_border),
                          onPressed: () {
                            nailPolishModel.isFavorite.toggle();
                          },
                        ),
                      )),
                )
              ],
            ),
            SizedBox(height: 8),
            Text(
              nailPolishModel.name,
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            if (nailPolishModel.rating != null)
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      nailPolishModel.rating.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            SizedBox(height: 8),
            Text('\$${nailPolishModel.price}',
                style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}
