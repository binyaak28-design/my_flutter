class api_get2_Modal_class {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  api_get2_Modal_class(
      {this.id, this.name, this.email, this.gender, this.status});

  api_get2_Modal_class.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['status'] = this.status;
    return data;
  }
}
