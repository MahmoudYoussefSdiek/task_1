class Character {
  Map<String, dynamic>? name;
  Map<String, dynamic>? images;
  String? gender;
  String? species;
  String? homePlanet;
  String? occupation;
  List<String>? sayings;
  int? id;
  String? age;

  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    images = json['images'];
    gender = json['gender'];
    species = json['species'];
    homePlanet = json['homePlanet'];
    occupation = json['occupation'];
    sayings = json['sayings'].cast<String>();
    id = json['id'];
    age = json['age'];
  }
}
