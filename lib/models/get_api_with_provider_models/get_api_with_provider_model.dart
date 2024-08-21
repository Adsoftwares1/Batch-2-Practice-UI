

class UsersModelForGetApiWithProvider {
//variables
  int id;
  String email;
  String first_name;
  String last_name;
  String image_url;

// constructer

  UsersModelForGetApiWithProvider({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.image_url,
  });

// from json function

  factory UsersModelForGetApiWithProvider.fromJson(Map<String, dynamic> json) {
    return UsersModelForGetApiWithProvider(
        id: json['id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        image_url: json['avatar'],
        email: json['email']);
  }
}
