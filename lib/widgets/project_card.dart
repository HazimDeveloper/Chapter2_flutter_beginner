import 'package:flutter/material.dart';

class ProjectsGrid extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Flutter Chat App',
      'description': 'A real-time messaging app',
      'image': 'assets/images/project1.png',
    },
    {
      'title': 'E-commerce App',
      'description': 'Online shopping platform',
      'image': 'assets/images/project2.png',
    },
    {
      'title': 'Weather App',
      'description': 'Real-time weather updates',
      'image': 'assets/images/project3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return ProjectCard(
          title: projects[index]['title']!,
          description: projects[index]['description']!,
          imageUrl: projects[index]['image']!,
        );
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}