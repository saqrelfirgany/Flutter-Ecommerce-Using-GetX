class UserModel {
  late String userId, email, name, photo;

  UserModel({
    required this.userId,
    required this.email,
    required this.name,
    required this.photo,
  });

  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map.isEmpty) {
      return;
    }
    userId = map['userId'];
    email = map['email'];
    name = map['name'];
    photo = map['photo'];
  }

  toJson() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'photo': photo,
    };
  }
}
