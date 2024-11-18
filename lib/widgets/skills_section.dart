import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  final List<Map<String, dynamic>> skills = [
    {'name': 'Flutter', 'level': 0.9},
    {'name': 'Dart', 'level': 0.85},
    {'name': 'Firebase', 'level': 0.8},
    {'name': 'UI Design', 'level': 0.75},
    {'name': 'Git', 'level': 0.7},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ...skills.map((skill) => _buildSkillBar(
                skill['name'],
                skill['level'],
              )),
        ],
      ),
    );
  }

  Widget _buildSkillBar(String skillName, double level) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skillName,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: level,
              minHeight: 10,
              backgroundColor: Colors.blue[100],
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}