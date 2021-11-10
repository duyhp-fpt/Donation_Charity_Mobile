class DonatorInfo {
  int? id;
  String? name;
  String? email;
  String? password;
  String? phoneNumber;
  String? address;
  int? roleId;
  dynamic? uid;

  DonatorInfo(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.phoneNumber,
      this.address,
      this.roleId,
      this.uid});

  DonatorInfo.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
    this.email = json["email"];
    this.password = json["password"];
    this.phoneNumber = json["phoneNumber"];
    this.address = json["address"];
    this.roleId = json["roleId"];
    this.uid = json["uid"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["email"] = this.email;
    data["password"] = this.password;
    data["phoneNumber"] = this.phoneNumber;
    data["address"] = this.address;
    data["roleId"] = this.roleId;
    data["uid"] = this.uid;
    return data;
  }
}
