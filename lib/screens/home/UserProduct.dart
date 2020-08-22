import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class UserProduct extends StatefulWidget {
  final String productId;

  UserProduct({Key key, @required this.productId}) : super(key: key);

  @override
  _UserProductState createState() => _UserProductState(productId);
}

class _UserProductState extends State<UserProduct> {
  String filePath = "";
  String pathFinal = "";
  String productName = "";
  String productPrice = "";
  String productKG = "";
  String productDes = "";
  String productOwnerId = "";

  _UserProductState(String productId);
  final firestoreInstance = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    getImagePath();
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Text(
            "Vegetable",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Celias-Medium',
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          child: Image.network(
            pathFinal,
            width: 200,
          ),
        ),
        SizedBox(),
        Container(
          child: Text(
            productName,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Celias-Medium',
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text(
            "Rs. " + productPrice,
            style: TextStyle(
                fontSize: 20,
                fontFamily: "AvenirLTStd-Book",
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "  About " + productName,
            style: TextStyle(fontSize: 20, fontFamily: 'Times New Roman'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            productDes,
            style: TextStyle(fontSize: 17),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.green)),
            padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
            onPressed: () {},
            child: Text(
              "Add to Cart",
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: "AvenirLTStd-Book",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    ));
  }

  getImagePath() async {
    var document = await firestoreInstance
        .collection("products")
        .document(widget.productId)
        .get();

    String path = document["filePath"];
    String name = document["name"];
    String description = document["des"];
    String kg = document["kg"].toString();
    String ownerid = document["ownerId"];
    String price = document["price"].toString();

    if (mounted) {
      setState(() {
        filePath = path;
        productDes = description;
        productKG = kg;
        productName = name;
        productOwnerId = ownerid;
        productPrice = price;
      });
    }

    String pathfinal = await getStorageUrl(path);
    if (mounted) {
      setState(() {
        pathFinal = pathfinal;
      });
    }
  }

  Future<String> getStorageUrl(String fileName) async {
    String url = "";
    StorageReference storageReference =
        FirebaseStorage.instance.ref().child("$fileName");
    url = await storageReference.getDownloadURL();
    return url;
  }
}
