class Shop{
  final String productname;
  final double price;
  final String productimage;
  final String description;
  final FoodCategory category;
  List<Addon> availableddons;//potentially have
  Shop({
    required this.category, 
    required this.productname,
    required this.price,
    required this.productimage,
        required this.description,
                required this.availableddons,


  });
 

}
 enum FoodCategory{
    jackets,pants,shoes,
  }
  class Addon{
    String name;
    double price;
    Addon({
      required this.name,
      required this.price,

    });
  }