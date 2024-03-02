import 'package:flutter/material.dart';

form_cell(String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      
      Text(hintText),
      Padding(
        padding: const EdgeInsets.only(top: 4,bottom: 10),
        child: TextFormField(
        
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide:BorderSide(color: Color(0xFF727272),width: 2),
                    ),
                      hintText: hintText,
                      // contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                    ),
                    
                      validator: (value) {
                      if(value==null || value.isEmpty)
                      {
                        return 'Please enter some text';
                      }
                      return null;
                      },
                     ),
      ),
    ],
  );
}