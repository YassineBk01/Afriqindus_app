import 'package:afriqindus_app/Pages/about_us.dart';
import 'package:afriqindus_app/Pages/contact.dart';
import 'package:afriqindus_app/Pages/manage_projects.dart';
import 'package:afriqindus_app/Pages/manage_services.dart';
import 'package:afriqindus_app/Pages/news.dart';

import 'package:afriqindus_app/main.dart';

import 'package:afriqindus_app/widgets/my_drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class  NavigationWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: Column(
          children: [
            MyHeaderDrawer(),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Home',
                    icon: FontAwesomeIcons.house,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 14),
                  buildMenuItem(
                    text: 'About Us',
                    icon: FontAwesomeIcons.circleQuestion,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 14),


                  const SizedBox(height: 14),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 14),

                  buildMenuItem(
                    text: 'News',
                    icon: FontAwesomeIcons.newspaper,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 10),
                  buildMenuItem(
                    text: 'Contact',
                    icon: FontAwesomeIcons.addressBook,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 14),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color , size: 25,),
      title: Text(text, style: TextStyle(color: color , fontSize: 18)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => about_usPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => manageProjects(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => newsPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => contactPage(),
        ));
        break;
      case 5 :
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => manageServices(),
        ));
        break;
    }
  }
}

