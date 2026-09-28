class ApiMoc2GetModalClass {
  String? name;
  String? realname;
  String? team;
  String? firstappearance;
  String? createdby;
  String? publisher;
  String? imageurl;
  String? bio;

  ApiMoc2GetModalClass({
    this.name,
    this.realname,
    this.team,
    this.firstappearance,
    this.createdby,
    this.publisher,
    this.imageurl,
    this.bio,
  });

  factory ApiMoc2GetModalClass.fromJson(Map<String, dynamic> json) {
    return ApiMoc2GetModalClass(
      name: json["name"] ?? "",
      realname: json["realname"] ?? "",
      team: json["team"] ?? "",
      firstappearance: json["firstappearance"] ?? "",
      createdby: json["createdby"] ?? "",
      publisher: json["publisher"] ?? "",
      imageurl: json["imageurl"] ?? "",
      bio: json["bio"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "realname": realname,
      "team": team,
      "firstappearance": firstappearance,
      "createdby": createdby,
      "publisher": publisher,
      "imageurl": imageurl,
      "bio": bio,
    };
  }
}
