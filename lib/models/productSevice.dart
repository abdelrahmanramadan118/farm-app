import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final CollectionReference productsCollection =
      FirebaseFirestore.instance.collection('products');

  Future<void> addProductToFirestore(String productName, int quantity) async {
    await productsCollection.add({
      'productName': productName,
      'quantity': quantity,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}
