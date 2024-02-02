class Shop{
  final String productname;
  final String productprice;
  final String productimage;
  Shop({
    required this.productname,
    required this.productprice,
    required this.productimage,
  });
  String get _productname => productname;
  String get _productprice => productprice;
  String get _productimage =>productimage;

}