import 'package:afriqindus_app/Pages/editProjectPage.dart';
import 'package:afriqindus_app/models/project.dart';
import 'package:afriqindus_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProjectWidget extends StatefulWidget {
  final Project project;

  const ProjectWidget({
    required this.project,
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Slidable(
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        key: Key(widget.project.id),
        children: [
          SlidableAction(
            onPressed: ((BuildContext context) {  editTodo(context, widget.project);}),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Modifier',
          ),
          SlidableAction(
            onPressed: (BuildContext context) {  deleteProject(context, widget.project);},
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Supprimer',
          ),

        ],



      ),

      child: buildProject(context),
    ),
  );

  Widget buildProject(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),

    ),
    padding: EdgeInsets.all(20),
    child: Row(
      children: [
        Checkbox(
          activeColor: Colors.blue,
          checkColor: Colors.white,
          value: widget.project.isDone,
          onChanged: (bool? value) {
            setState(() {
              widget.project.isDone = value!;
            });
            Utils.showSnackBar(
                context,
                widget.project.isDone  ? 'Task completed' : 'Task marked incomplete');
          },
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.project.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                  fontSize: 22,
                ),
              ),
              if (widget.project.description.isNotEmpty)
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    widget.project.description,
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                )
            ],
          ),
        ),
      ],
    ),
  );
  void deleteProject(BuildContext context, Project project) {
    //provider delete

    Utils.showSnackBar(context, 'Deleted the task');
  }
  void editTodo(BuildContext context, Project project) => Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => EditProjectPage(project: project),
    ),
  );
}
