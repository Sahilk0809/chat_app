import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerProvider extends ChangeNotifier {
  File? fileImage;
  var imagePicker = ImagePicker();

  Future<void> selectImage() async {
    XFile? xFileImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    fileImage = File(fileImage!.path);
    notifyListeners();
  }
}