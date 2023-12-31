class Branch {
  String id;
  String name;
  String location;
  String openingHours;
  List<Menu> menuList;

  Branch({
    required this.id,
    required this.name,
    required this.location,
    required this.openingHours,
    required this.menuList,
  });
}

class Menu {
  String id;
  String name;
  double price;

  Menu({
    required this.id,
    required this.name,
    required this.price,
  });
}
