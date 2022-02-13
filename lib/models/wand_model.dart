class Wand {

  String? wood;
  String? core;
  int? length;

  Wand({
    this.wood,
    this.core,
    this.length,
  });

  factory Wand.fromJson(Map<String, dynamic> json) => Wand(
    wood: json["wood"] ?? "",
    core: json["core"] ?? "",
    length: json["length"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "wood": wood,
    "core": core,
    "length": length,
  };
}