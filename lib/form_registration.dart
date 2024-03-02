import 'package:event_form/datepeaker.dart';
import 'package:event_form/form_gap.dart';
import 'package:event_form/home.dart';
import 'package:flutter/material.dart';

class Rform extends StatefulWidget {
  const Rform({super.key});

  @override
  State<Rform> createState() => _RformState();
}

class _RformState extends State<Rform> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/logo1.png',
                          height: 30,
                        ),
                        Text(
                          'YourEvent',
                          style:
                              TextStyle(fontSize: 30, color: Color(0xFF007804)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    color: Color.fromARGB(255, 233, 251, 255),
                    child: Text(
                      'Online Registration',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: form_cell("First Name"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: form_cell("Last Name"),
                      ),
                    ],
                  ),
                  form_cell("Email Address"),
                  form_cell("Company"),
                  form_cell("Address"),
                  Text("Date of Birth"),
                  datepeaker(),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.grey)),
                            onPressed: () {
                              Navigator.of(context).pop(
                                MaterialPageRoute(builder: (context) {
                                return home();
                              }));
                            },
                            child: Text(
                              "Previous",
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.pink),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
