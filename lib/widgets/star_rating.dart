import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final double size;

  const StarRating({
    super.key,
    required this.rating,
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(5, (index) {
          final starIndex = index + 1;
          if (rating >= starIndex) {
            return Icon(Icons.star, color: Colors.amber, size: size);
          } else if (rating >= starIndex - 0.5) {
            return Icon(Icons.star_half, color: Colors.amber, size: size);
          } else {
            return Icon(Icons.star_border, color: Colors.amber, size: size);
          }
        }),
        const SizedBox(width: 4),
        Text(
          rating.toStringAsFixed(1),
          style: TextStyle(
            color: AppTheme.textSecondary,
            fontSize: size * 0.8,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
