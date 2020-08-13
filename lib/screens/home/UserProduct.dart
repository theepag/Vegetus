import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class UserProduct extends StatefulWidget {
  final String productId;
  var url;
  UserProduct({Key key, @required this.productId}) : super(key: key);
  final ref = FirebaseStorage.instance
      .ref()
      .child('image_picker467961543730397175.jpg');

  getPic() async {
    var url = await ref.getDownloadURL();
    print(url);
  }

  @override
  _UserProductState createState() => _UserProductState(productId);
}

class _UserProductState extends State<UserProduct> {
  _UserProductState(String productId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.productId),
        ),
        body: Container(
          child: Image.network('image_picker467961543730397175.jpg'),
        ));
  }
}
