import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mark_favourite/src/controllers/image_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Using Getx'),
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(
                        File(
                          controller.imagePath.toString(),
                        ),
                      )
                    : null,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                controller.getImage();
              },
              child: const Text('Capture Image'),
            ),
          ],
        ),
      ),
    );
  }
}
