import 'package:shoppingapp/models/shop.dart';

class Product{

 final  List<Shop> _product =[
//jackets
Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/a.jpg'),
Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/a.jpg'),

Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/a.jpg'),

Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/a.jpg'),

Shop(productname: 'Linen Blazer', productprice: '89.99', productimage: 'lib/images/a.jpg'),

//shoes


 ];

 //user cart
 List<Shop> _usercart =[];


 List<Shop> get listofproduct => _product;
  List<Shop> get usercart => _usercart;
//add item tocart

void additemtocart(Shop shop){
_usercart.add(shop);
}

//remove

void removefromcart(Shop shop){
_usercart.remove(shop);

}
}