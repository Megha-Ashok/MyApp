import 'package:flutter/material.dart';

class HourlyForeCastItems extends StatelessWidget {
  final String label;
  final IconData icon;
  final String value;
  const HourlyForeCastItems({
    super.key,
    required this.label,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
          width: 100,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              Text(
                label,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Icon(icon, size: 32),
              const SizedBox(height: 8),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          )),
    );
  }
}
