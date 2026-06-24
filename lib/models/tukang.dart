class Tukang {
  final String id;
  final String nama;
  final String kategoriId;
  final String deskripsi;
  final List<String> skills;
  final double rating;
  final int jumlahReview;
  final double hargaMulai;
  final String lokasi;
  final double jarak;
  final String foto;
  final bool tersedia;

  Tukang({
    required this.id,
    required this.nama,
    required this.kategoriId,
    required this.deskripsi,
    required this.skills,
    required this.rating,
    required this.jumlahReview,
    required this.hargaMulai,
    required this.lokasi,
    required this.jarak,
    required this.foto,
    this.tersedia = true,
  });
}
