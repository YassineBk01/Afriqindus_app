import 'package:afriqindus_app/models/project.dart';
import 'package:afriqindus_app/widgets/projectWidget.dart';
import 'package:flutter/material.dart';

class CompletedListWidget extends StatefulWidget {
  final projects = [

    Project(
      createdTime: DateTime.now(),
      title: 'app mobile de gestion des projets',
      description: '''- ajouter projets
      -modifier projet
      -supprimer projet''', id: '2',
      isDone: true,
    ),

  ];


  @override
  State<CompletedListWidget> createState() => _CompletedListWidgetState();
}

class _CompletedListWidgetState extends State<CompletedListWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.projects.isEmpty
        ? Center(
      child: Text(
        'No completed tasks.',
        style: TextStyle(fontSize: 20),
      ),
    )
        : ListView.separated(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16),
      separatorBuilder: (context, index) => Container(height: 8),
      itemCount: widget.projects.length,
      itemBuilder: (context, index) {
        final project = widget.projects[index];

        return ProjectWidget(project: project);
      },
    );
  }
}
