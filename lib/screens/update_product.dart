
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:vegetus/models/product.dart';
import 'package:vegetus/providers/product_provider.dart';

class UpdateProduct extends StatefulWidget {
  final Product product;
  UpdateProduct([this.product]);
  @override
  _UpdateProductState createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {

  final nameController=TextEditingController();
  final priceController=TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    if(widget.product==null){
      nameController.text="";
      priceController.text="";
      new Future.delayed(Duration.zero, (){
         final productProvider = Provider.of<ProductProvider>(context,listen: false);
         productProvider.loadValues(Product());
      });
    }
    else{
      nameController.text=widget.product.name;
      priceController.text=widget.product.price.toString();
      new Future.delayed(Duration.zero, (){
         final productProvider = Provider.of<ProductProvider>(context,listen: false);
         productProvider.loadValues(widget.product);
      });
     
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    

    final productProvider = Provider.of<ProductProvider>(context);

    

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
        backgroundColor: Colors.green,
      ),
      body: Builder(
        builder: (context) => Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: ListView(
              children: <Widget>[
                
               Container(
                        padding: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Image(
                          image: AssetImage('graphics/logo.png'),
                          width: 200.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                Container(
                  height: 50.0,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Product Name'),
                    controller: nameController,
                    onChanged: (value) {
                      productProvider.changeKg(value);
                    },
                  ),
                ),
                Container(
                  height: 50.0,
                  child: TextField(
                    controller: priceController,
                    // productProvider.changeName(value);
                    decoration: InputDecoration(hintText: 'Product Price'),
                    onChanged: (value) => productProvider.changePrice(value),
                  ),
                ),
                
                
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 500,
                  height: 45,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    color: Colors.green[600],
                    child: Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                     

                      

                      productProvider.saveProduct();

                     Navigator.of(context).pop();
                    },
                  ),
                ),
                 SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 500,
                  height: 45,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    color: Colors.red[600],
                    child: Text(
                      'Delete',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                     
                      productProvider.removeProduct(widget.product.productId);
                      
                    
                     Navigator.of(context).pop();
                     
                     
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}