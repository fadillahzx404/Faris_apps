class Users {
  final String name;
  final String role;
  final String image;
  final String username;
  final String nomor;
  final String gaji;
  final String id;

  Users({
    required this.name,
    required this.role,
    required this.image,
    required this.username,
    required this.nomor,
    required this.gaji,
    required this.id,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      name: json['name'] ?? '',
      role: json['role'] ?? '',
      image: json['avatar'] ?? '',
      username: json['username'] ?? '',
      nomor: json['nomor'] ?? '',
      gaji: json['gaji'] ?? '',
      id: json['id'] ?? '',
    );
  }
}
