class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String? profileImage;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    this.profileImage,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      id: data["id"],
      name: data["name"],
      userName: data["user_name"],
      email: data["email"],
      profileImage: data["profile_image"],
      phoneNumber: data["phone_number"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "user_name": userName,
      "email": email,
      "profile_image": profileImage,
      "phoneNumber": phoneNumber,
    };
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Gugum Rahmat Gumilar",
      userName: "gugumrg",
      email: "2006032@itg.ac.id",
      profileImage: "https://i.ibb.co/6bsWz8z/2006032-Gugum-Rahmat-Gumilar.jpg",
      phoneNumber: "089999999",
    );
  }
}
