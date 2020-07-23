import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:vegetus/models/product.dart';
import 'package:vegetus/services/firestore_service.dart';

class ProductProvider with ChangeNotifier{
 final firestoreService=FirestoreService();
 String _name;
  double _price;
  double _kg;
   String _des;
  String _productId;
  var uuid=Uuid();

//Getters
  String get name => _name;
  double get price => _price;
  double get kg => _kg;
  String get des => _des;

   //Setters
  changeName(String value) {
    _name = value;
    notifyListeners();
  }

  changePrice(String value) {
    _price = double.parse(value);
    notifyListeners();
  } 
  changeKg(String value) {
    _kg = double.parse(value);
    notifyListeners();
  } 
  changeDes(String value) {
    _des = value;
    notifyListeners();
  }
  saveProduct(){
    // print("$name,$price,$kg,$des");
   var newProduct =Product(name: name,price: price,kg:kg ,des: des,productId: uuid.v4());
   firestoreService.saveProduct(newProduct);
  }
}