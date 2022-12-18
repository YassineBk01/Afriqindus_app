
import 'package:afriqindus_app/widgets/addServiceDialogue.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class manageServices extends StatefulWidget {


  @override
  State<manageServices> createState() => _manageServicesState();
}

class _manageServicesState extends State<manageServices> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Gestion des services',
          style: GoogleFonts.roboto(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Color.fromARGB(255, 255, 179, 0),

        onPressed: () => showDialog(
          context: context,
          builder: (context) => addServiceDialogue(),
          barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),

    );
  }
}
