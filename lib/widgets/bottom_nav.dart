import 'package:flutter/material.dart';

import '../app/theme.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex; // 0 Home, 1 Lịch, 2 Thống kê, 3 Cá nhân
  final ValueChanged<int> onTap;
  final VoidCallback onAddTap;
  static const double _iconSize = 26;

  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.onAddTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 12,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _item(0, Icons.home_outlined, Icons.home),
              _item(1, Icons.calendar_month_outlined, Icons.calendar_month),
              _addButton(),
              _item(2, Icons.bar_chart_outlined, Icons.bar_chart),
              _item(3, Icons.person_outline, Icons.person),
            ],
          ),
        ),
      ),
    );
  }

  Widget _item(int index, IconData icon, IconData activeIcon) {
    final selected = index == currentIndex;
    return SizedBox(
      width: 48,
      height: 48,
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () => onTap(index),
        icon: Icon(
          selected ? activeIcon : icon,
          size: _iconSize,
          color: selected ? AppColors.primary : AppColors.textSub,
        ),
      ),
    );
  }

  Widget _addButton() {
    return GestureDetector(
      onTap: onAddTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: const BoxDecoration(
          color: AppColors.accent,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
