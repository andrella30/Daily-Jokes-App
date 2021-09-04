class JokeCategoriesModel {
  final String name;
  final int index;

  JokeCategoriesModel({required this.name, required this.index});
}

List<JokeCategoriesModel> categories = [
  JokeCategoriesModel(name:'Any', index: 0),
  JokeCategoriesModel(name:'Dark', index: 1),
  JokeCategoriesModel(name:'Programming', index: 2),
  JokeCategoriesModel(name:'Miscellaneous', index: 3),
];