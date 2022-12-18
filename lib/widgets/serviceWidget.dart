
import 'package:afriqindus_app/Pages/editServicePage.dart';

import 'package:afriqindus_app/models/service.dart';
import 'package:afriqindus_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ServiceWidget extends StatefulWidget {
  final Service service;

  const ServiceWidget({
    required this.service,
    Key? key,
  }) : super(key: key);

  @override
  State<ServiceWidget> createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Slidable(
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        key: Key(widget.service.id),
        children: [
          SlidableAction(
            onPressed: ((BuildContext context) {  editService(context, widget.service);}),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Modifier',
          ),
          SlidableAction(
            onPressed: (BuildContext context) {  deleteService(context, widget.service);},
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

        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.service.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                  fontSize: 22,
                ),
              ),
              if (widget.service.description.isNotEmpty)
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    widget.service.description,
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                )
            ],
          ),
        ),
      ],
    ),
  );
  void deleteService(BuildContext context, Service service) {
    //provider delete

    Utils.showSnackBar(context, 'Deleted the task');
  }
  void editService(BuildContext context, Service service) => Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => EditServicePage(service: service),
    ),
  );
}
