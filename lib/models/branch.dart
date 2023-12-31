class Branch {
  String name;
  String location;
  List<Menu> menuList;

  Branch({required this.name, required this.location, required this.menuList});
}

class Menu {
  String name;
  String description;
  double price;

  Menu({required this.name, required this.description, required this.price});
}
