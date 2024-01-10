import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mark_favourite/src/controllers/favourite_controller.dart';

class MarkFavouriteScreen extends StatefulWidget {
  const MarkFavouriteScreen({super.key});

  @override
  State<MarkFavouriteScreen> createState() => _MarkFavouriteScreenState();
}

class _MarkFavouriteScreenState extends State<MarkFavouriteScreen> {
  FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark Favourite Using Getx'),
      ),
      body: ListView.builder(
        itemCount: controller.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (controller.tempFruitList
                    .contains(controller.fruitList[index].toString())) {
                  controller.removeFromFavourite(
                      controller.fruitList[index].toString());
                } else {
                  controller
                      .addToFavourite(controller.fruitList[index].toString());
                }
              },
              title: Text(controller.fruitList[index].toString()),
              trailing: Obx(
                () => Icon(
                  Icons.favorite,
                  color: controller.tempFruitList
                          .contains(controller.fruitList[index].toString())
                      ? Colors.red
                      : Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
