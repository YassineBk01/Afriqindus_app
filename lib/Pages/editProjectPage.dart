import 'package:afriqindus_app/models/project.dart';
import 'package:afriqindus_app/widgets/projects_form.dart';
import 'package:flutter/material.dart';


class EditProjectPage extends StatefulWidget {
  final Project project;
  const EditProjectPage({Key? key, required this.project}) : super(key: key);

  @override
  State<EditProjectPage> createState() => _EditProjectPageState();
}

class _EditProjectPageState extends State<EditProjectPage> {
  final _formKey = GlobalKey<FormState>();
  late String title;
  late String description;
  @override
  void initState() {
    super.initState();

    title = widget.project.title;
    description = widget.project.description;
  }

  Widget build(BuildContext context)  => Scaffold(
    appBar: AppBar(
      title: Text('Modifier un projet'),
      actions: [
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            //provider delete

            Navigator.of(context).pop();
          },
        )
      ],
    ),
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: projectFormWidget(
          title: title,
          description: description,
          onChangedTitle: (title) => setState(() => this.title = title),
          onChangedDescription: (description) =>
              setState(() => this.description = description),
          onSavedProject: saveProject,
        ),
      ),
    ),
  );

  void saveProject() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    } else {
      //provider

      Navigator.of(context).pop();
    }
  }
}
