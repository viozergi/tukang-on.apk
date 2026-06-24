import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/kategori.dart';

class KategoriCard extends StatelessWidget {
  final Kategori kategori;
  final VoidCallback onTap;

  const KategoriCard({
    super.key,
    required this.kategori,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                AppTheme.primary.withValues(alpha: 0.1),
                Colors.transparent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                kategori.icon,
                style: const TextStyle(fontSize: 36),
              ),
              const SizedBox(height: 6),
              Text(
                kategori.nama,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                kategori.deskripsi,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 10,
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
