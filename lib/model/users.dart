class Users {
  final String name;
  final String role;
  final String image;
  final String username;
  final int nomor;
  final int gaji;
  final int id;

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
      name: json['nama'],
      role: json['role'],
      image: json['avatar'],
      username: json['username'],
      nomor: json['nomor'],
      gaji: json['gaji'],
      id: json['id'],
    );
  }
}
