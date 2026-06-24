class UserModel {
  final String id;
  String nama;
  String noHP;
  String email;

  UserModel({
    required this.id,
    required this.nama,
    required this.noHP,
    this.email = '',
  });
}
