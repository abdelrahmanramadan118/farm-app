import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:provider/provider.dart';
import '../main.dart';
import '../models/ProfileModel.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late String userEmail;
  late PickedFile? pickedFile;

  @override
  void initState() {
    super.initState();
    // Retrieve the user email when the widget initializes
    userEmail = FirebaseAuth.instance.currentUser?.email ?? 'No Email';
    // Use Provider to listen for changes in the picked file
    pickedFile = context.read<ProfileModel>().pickedFile;
  }

  Future<void> _pickAndUploadImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    pickedFile = PickedFile(image?.path ?? '');
  
    if (image != null) {
      final storageRef = firebase_storage.FirebaseStorage.instance
          .ref('profile_images/$userEmail.jpg');

      try {
        await storageRef.putFile(File(pickedFile!.path));
        setState(() {});
      } catch (e) {
        print('Error during upload: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String userEmail = FirebaseAuth.instance.currentUser?.email ?? 'No Email';
    return Scaffold(
      backgroundColor: scolor,
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'Cherly',
            color: scolor,
            fontSize: 25,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: scolor),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: color,
              radius: 100,
              backgroundImage:
                  pickedFile != null ? FileImage(File(pickedFile!.path)) : null,
            ),
            SizedBox(height: 20),
            Text(
              userEmail,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Anastasia',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickAndUploadImage,
              child: Text('Add Image'),
            ),
            SizedBox(height: 20),
            Text('contact us',
            style: TextStyle(
              color: color,
              fontSize: 25,
              fontFamily: 'EduTASBeginner-VariableFont_wght',
            ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: scolor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: color)),
                  width: 250,
                  height: 50,
                  child: Center(
                    child: Text(
                      '+201155429555',
                      style: TextStyle(
                          fontFamily: 'EduTASBeginner-VariableFont_wght',
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.phone,
                      color: color,
                    ),),
                Container(
                  decoration: BoxDecoration(
                      color: scolor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: color)),
                  width: 275,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Abdelrahmanramadan118@gmail.com',
                      style: TextStyle(
                          fontFamily: 'EduTASBeginner-VariableFont_wght',
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.email,
                      color: color,
                    ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
