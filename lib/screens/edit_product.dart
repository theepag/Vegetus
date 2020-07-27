import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegetus/providers/product_provider.dart';

class EditProduct extends StatefulWidget {
  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    final productProvider =Provider.of<ProductProvider>(context);
  
    return Scaffold(
      appBar: AppBar(title: Text('Edit Product'),
      backgroundColor: Colors.green,),
      body: Padding(
        padding:EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                
        child: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 100,
                  child: ClipOval(
                    child: SizedBox(
                      height: 180,
                      width: 180,
                      child: Image.network(
                        "https://blogs.extension.iastate.edu/spendsmart/files/2014/06/vegetables-variety.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: IconButton(
                  icon: Icon(
                    Icons.camera,
                    size: 30.0,
                  ) ,
                  onPressed: (){

                  }
                  ),
              ),
            ],
          ),
          // Container(
          //              //padding: new EdgeInsets.fromLTRB(0, 50, 0, 0),
          //               child: Image(
          //                 image: AssetImage('graphics/logo.png'),
          //                 width: 200.0,
          //               ),
          //             ),
          //             SizedBox(height: 10.0),
          Container(
                        height: 50,
          child:TextField(
            decoration: InputDecoration(hintText: 'Product Name'),
            onChanged: (value){
              productProvider.changeName(value);
            },
          ),
          ),
          Container(
                       height: 50.0,
          child:TextField(
            decoration: InputDecoration(hintText: 'Product Price'),
            onChanged: (value) =>productProvider.changePrice(value),
          ),
          ),
          Container(
                        height: 50.0,
          child:TextField(
            decoration: InputDecoration(hintText: 'Product kg'),
            onChanged: (value){
              productProvider.changeKg(value);
            },
          ),
          ),
          Container(
                        height: 50.0,
          child:TextField(
            decoration: InputDecoration(hintText: 'Product Description'),
            onChanged: (value){
              productProvider.changeDes(value);
            },
          ),
          ),
          SizedBox(height: 20.0,),
          Container(
                        width: 500,
                        height: 45,
          child:RaisedButton(
            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.green[600],
            child:Text(
              'Save',
            style: TextStyle(color: Colors.white),
            ),
            onPressed: (){
              productProvider.saveProduct();
            },
          ),
          ),
            
        ],),
      ),
    );
}
}