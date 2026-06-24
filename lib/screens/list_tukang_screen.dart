import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/kategori.dart';
import '../models/tukang.dart';
import '../services/mock_data.dart';
import '../widgets/tukang_list_item.dart';
import 'detail_tukang_screen.dart';

class ListTukangScreen extends StatelessWidget {
  final Kategori kategori;

  const ListTukangScreen({super.key, required this.kategori});

  @override
  Widget build(BuildContext context) {
    final List<Tukang> tukangs = MockData.getTukangByKategori(kategori.id);

    return Scaffold(
      appBar: AppBar(
        title: Text('${kategori.icon} ${kategori.nama}'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: AppTheme.primary.withValues(alpha: 0.05),
            child: Row(
              children: [
                Text(
                  kategori.icon,
                  style: const TextStyle(fontSize: 32),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        kategori.nama,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        kategori.deskripsi,
                        style: const TextStyle(
                          fontSize: 13,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${tukangs.length} Tukang',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (tukangs.isEmpty)
            const Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search_off,
                      size: 64,
                      color: AppTheme.textSecondary,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Belum ada tukang di kategori ini',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            )
          else
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: tukangs.length,
                itemBuilder: (context, index) {
                  final tukang = tukangs[index];
                  return TukangListItem(
                    tukang: tukang,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailTukangScreen(
                            tukang: tukang,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
