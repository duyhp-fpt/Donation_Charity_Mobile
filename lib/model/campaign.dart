class Campaign {
  int? campaignId;
  String? campaignName;
  int? organizationId;
  String? description;
  String? title;
  String? dateCreate;
  String? image;
  int? donationCaseId;
  String? cardNumber;
  double? goal;

  Campaign(
      {this.campaignId,
      this.campaignName,
      this.organizationId,
      this.description,
      this.title,
      this.dateCreate,
      this.image,
      this.donationCaseId,
      this.cardNumber,
      this.goal});

  Campaign.fromJson(Map<String, dynamic> json) {
    this.campaignId = json["campaignId"];
    this.campaignName = json["campaignName"];
    this.organizationId = json["organizationId"];
    this.description = json["description"];
    this.title = json["title"];
    this.dateCreate = json["dateCreate"];
    this.image = json["image"];
    this.donationCaseId = json["donationCaseId"];
    this.cardNumber = json["cardNumber"];
    this.goal = json["goal"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["campaignId"] = this.campaignId;
    data["campaignName"] = this.campaignName;
    data["organizationId"] = this.organizationId;
    data["description"] = this.description;
    data["title"] = this.title;
    data["dateCreate"] = this.dateCreate;
    data["image"] = this.image;
    data["donationCaseId"] = this.donationCaseId;
    data["cardNumber"] = this.cardNumber;
    data["goal"] = this.goal;
    return data;
  }
}
