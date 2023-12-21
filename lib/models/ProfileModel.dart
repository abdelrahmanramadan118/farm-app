import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileModel extends ChangeNotifier {
  PickedFile? _pickedFile;

  PickedFile? get pickedFile => _pickedFile;

  void setPickedFile(PickedFile? file) {
    _pickedFile = file;
    notifyListeners();
  }
}
