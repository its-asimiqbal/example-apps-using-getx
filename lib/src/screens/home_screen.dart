import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mark_favourite/src/screens/image_picker_screen.dart';
import 'package:mark_favourite/src/screens/mark_favourite_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Screens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const MarkFavouriteScreen(),
                );
              },
              child: const Text('Mark Favourite Screen'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const ImagePickerScreen(),
                );
              },
              child: const Text('Image Picker Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
