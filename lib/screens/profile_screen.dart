import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../services/mock_data.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<void> _editProfile() async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => EditProfileScreen(user: MockData.currentUser),
      ),
    );
    if (result == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = MockData.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppTheme.primary,
                    AppTheme.secondary,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 44,
                    backgroundColor: Colors.white.withValues(alpha: 0.2),
                    child: Text(
                      user.nama[0].toUpperCase(),
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    user.nama,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.noHP,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: Column(
                  children: [
                    _menuItem(
                      icon: Icons.person_outline,
                      label: 'Edit Profil',
                      onTap: _editProfile,
                    ),
                    const Divider(height: 1),
                    _menuItem(
                      icon: Icons.history,
                      label: 'Riwayat Booking',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    _menuItem(
                      icon: Icons.favorite_outline,
                      label: 'Tukang Favorit',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    _menuItem(
                      icon: Icons.settings_outlined,
                      label: 'Pengaturan',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    _menuItem(
                      icon: Icons.help_outline,
                      label: 'Bantuan',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _menuItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppTheme.primary),
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 15,
          color: AppTheme.textPrimary,
        ),
      ),
      trailing: const Icon(
        Icons.chevron_right,
        color: AppTheme.textSecondary,
      ),
      onTap: onTap,
    );
  }
}
