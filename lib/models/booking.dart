class Booking {
  final String id;
  final String tukangId;
  final String userId;
  final String tanggal;
  final String jam;
  final String alamat;
  final String catatan;
  final String status;
  final DateTime createdAt;

  Booking({
    required this.id,
    required this.tukangId,
    required this.userId,
    required this.tanggal,
    required this.jam,
    required this.alamat,
    this.catatan = '',
    this.status = 'diproses',
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();
}
