class User {
  int? id;
  String? fullName;
  String? email;
  String? password;
  bool? isOld;
  bool? isMid;
  bool? isKid;
  int? createdAt;
  String? profileUrl;
  String? occupation;
  List<String>? diseases;

  User(
      {this.id,
      this.fullName,
      this.email,
      this.password,
      this.isOld,
      this.isMid,
      this.isKid,
      this.createdAt,
      this.profileUrl,
      this.occupation,
      this.diseases});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    email = json['email'];
    password = json['password'];
    isOld = json['isOld'];
    isMid = json['isMid'];
    isKid = json['isKid'];
    createdAt = json['createdAt'];
    profileUrl = json['profile_url'];
    occupation = json['occupation'];
    diseases = json['diseases'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['isOld'] = this.isOld;
    data['isMid'] = this.isMid;
    data['isKid'] = this.isKid;
    data['createdAt'] = this.createdAt;
    data['profile_url'] = this.profileUrl;
    data['occupation'] = this.occupation;
    data['diseases'] = this.diseases;
    return data;
  }
}
