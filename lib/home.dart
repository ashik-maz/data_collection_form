import 'package:event_form/form_gap.dart';
import 'package:event_form/form_registration.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 10, 198),
        centerTitle: true,
        title: Text("SmartBees IT"),
        // actions: [
        //   Icon(Icons.ma

        //   )
        // ],
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Center(
            child: Column(
              children: [
                form_cell("Enter Your Mail"),
                form_cell("Enter Password"),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.pink),
                    ),
                    onPressed: () {
                      // if(_formKey.currentState!.validate()){
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(content: Text("Processing Data")),
                      //   );

                      // }
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                        return Rform();
                      }));
                    },
                    child: Text(
                      "Open Form",
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
