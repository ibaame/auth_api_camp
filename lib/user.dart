class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String website;
  final String phone;

  User(this.id, this.name, this.username, this.email, this.website, this.phone);

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      map['id'],
      map['name'],
      map['username'],
      map['email'],
      map['website'],
      map['phone'],
    );
  }
}
