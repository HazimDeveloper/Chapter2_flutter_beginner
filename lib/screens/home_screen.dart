import 'package:flutter/material.dart';
import '../widgets/profile_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/project_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileSection(),
            Divider(height: 20),
            SkillsSection(),
            Divider(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'My Projects',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ProjectsGrid(),
          ],
        ),
      ),
    );
  }
}