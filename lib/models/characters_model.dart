
import 'package:flutter_app_harry_potter/models/wand_model.dart';

class CharactersModel {

  String name;
  List<dynamic> alternateNames;
  String species;
  String gender;
  String house;
  String dateOfBirth;
  String yearOfBirth;
  bool wizard;
  String ancestry;
  String eyeColour;
  String hairColour;
  //Wand? wand;
  String patronus;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
  bool alive;
  String? image;

  CharactersModel({
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.gender,
    required this.house,
    required this.dateOfBirth,
    required this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    //this.wand,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alive,
    this.image,
  });

  factory CharactersModel.fromJson(Map<String, dynamic> json) => CharactersModel(
    name: json["name"],
    alternateNames: List<dynamic>.from(json["alternate_names"].map((x) => x)),
    species: json["species"],
    gender: json["gender"],
    house: json["house"],
    dateOfBirth: json["dateOfBirth"],
    yearOfBirth: json["yearOfBirth"].toString(),
    wizard: json["wizard"],
    ancestry: json["ancestry"],
    eyeColour: json["eyeColour"],
    hairColour: json["hairColour"],
    //wand: Wand?.fromJson(json["wand"]),
    patronus: json["patronus"],
    hogwartsStudent: json["hogwartsStudent"],
    hogwartsStaff: json["hogwartsStaff"],
    actor: json["actor"],
    alive: json["alive"],
    image: json["image"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "alternate_names": List<dynamic>.from(alternateNames.map((x) => x)),
    "species": species,
    "gender": gender,
    "house": house,
    "dateOfBirth": dateOfBirth,
    "yearOfBirth": yearOfBirth,
    "wizard": wizard,
    "ancestry": ancestry,
    "eyeColour": eyeColour,
    "hairColour": hairColour,
    //"wand": wand?.toJson(),
    "patronus": patronus,
    "hogwartsStudent": hogwartsStudent,
    "hogwartsStaff": hogwartsStaff,
    "actor": actor,
    "alive": alive,
    "image": image,
  };
}
