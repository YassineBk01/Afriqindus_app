import 'package:afriqindus_app/models/project.dart';
import 'package:afriqindus_app/widgets/projects_form.dart';
import 'package:flutter/material.dart';

class addProjectDialogue extends StatefulWidget {
  const addProjectDialogue({Key? key}) : super(key: key);

  @override
  State<addProjectDialogue> createState() => _addProjectDialogueState();
}

class _addProjectDialogueState extends State<addProjectDialogue> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: AlertDialog(
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ajouter un projet',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Color.fromARGB(255, 6, 45, 108),
              ),
            ),
            const SizedBox(height: 8),
            projectFormWidget(
              onChangedTitle: (title) => setState(() => this.title = title),
              onChangedDescription: (description) =>
                  setState(() => this.description = description),
              onSavedProject: addProject,
            ),

          ],
        ),
      ),
    ),
  );

  void addProject() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    } else {
      final project = Project(
        id: DateTime.now().toString(),
        title: title,
        description: description,
        createdTime: DateTime.now(),
      );



      Navigator.of(context).pop();
    }
  }

}
