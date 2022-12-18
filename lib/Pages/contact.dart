import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  contactPage extends StatelessWidget {


  final formKey = GlobalKey<FormState>(); //key for form
  String name="";
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Contact Us',
          style: GoogleFonts.roboto(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color(0xFFffffff),
        body: SingleChildScrollView(
            child :Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:height*0.04),
                Text("Here to Get", style: GoogleFonts.workSans(fontSize: 35, color:Color(0xFF363f93),fontWeight: FontWeight.w500,),),
                Text("Welcomed !", style: GoogleFonts.workSans(fontSize: 35, color:Color(0xFF363f93),fontWeight: FontWeight.w500,),),
                SizedBox(height:height*0.1),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(height:height*0.04),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your email",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty ||!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(height:height*0.04),
                TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: "Enter your message",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(height:height*0.05),
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
                
              ],
            ),
          ),
        ))

    );
  }
}