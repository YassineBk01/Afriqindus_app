
import 'package:afriqindus_app/models/project.dart';
import 'package:afriqindus_app/widgets/projectWidget.dart';
import 'package:flutter/material.dart';


class ProjectListWidget extends StatefulWidget {

  final projects = [
  Project(
  createdTime: DateTime.now(),
  title: 'App GMAO',
  description: '''''', id: '1',
  ),
  Project(
  createdTime: DateTime.now(),
  title: 'app web de gestion des projets',
  description: '''- ajouter projets
      -modifier projet
      -supprimer projet''', id: '2',
  )
  ];
  @override
  State<ProjectListWidget> createState() => _ProjectListWidgetState();
}

class _ProjectListWidgetState extends State<ProjectListWidget> {
  @override
  Widget build(BuildContext context) {
  return widget.projects.isEmpty
  ? Center(
  child: Text(
  'No projets.',
  style: TextStyle(fontSize: 20),
  ),
  )
      : ListView.separated(
  physics: BouncingScrollPhysics(),
  padding: EdgeInsets.all(16),
  separatorBuilder: (context, index) => Container(height: 15),
  itemCount: widget.projects.length,
  itemBuilder: (context, index) {
  final project = widget.projects[index];

  return ProjectWidget(project: project);
  },
  );
}
}