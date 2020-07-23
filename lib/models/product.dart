class Product{
  final String productId;
  final String name;
  final double price;
  final double kg;
  final String des;

  Product({this.productId,this.price, this.name,this.kg,this.des});
  Map<String,dynamic> toMap(){
    return {
      'productId' : productId,
      'name' : name,
      'price' : price,
      'kg' : kg,
      'des' : des
    };
  }
}