import 'package:afriqindus_app/widgets/addProjectDialogue.dart';
import 'package:afriqindus_app/widgets/completedProjects.dart';
import 'package:afriqindus_app/widgets/projectsList.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class manageProjects extends StatefulWidget {


  @override
  State<manageProjects> createState() => _manageProjectsState();
}

class _manageProjectsState extends State<manageProjects> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      ProjectListWidget(),
      CompletedListWidget(),
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Gestion des projets',
          style: GoogleFonts.roboto(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Projets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done, size: 28),
            label: 'Complétée',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Color.fromARGB(255, 255, 179, 0),

        onPressed: () => showDialog(
          context: context,
          builder: (context) => addProjectDialogue(),
          barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
