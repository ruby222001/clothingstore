 class Category{
  final String categoryname;
  final String type;
  Category({
    required this.categoryname,
    required this.type,
  });
 }
 
 final List<Category> categorylist =[
  Category(categoryname: 'All', type: 'jackets'),
              Category(categoryname: 'leather Jackets',type: 'jackets'),
              Category(categoryname: 'black denium jeans',type: 'jeans'),
 ];