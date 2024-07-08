import 'package:flutter/material.dart';

TextField myTextinput (context,String label,TextEditingController txtcontroller, String placeholder,

    Function? onChangeValue(value)) {
  return TextField(
   style: TextStyle(

   ),
    autocorrect: false,
    onSubmitted: (value) {

    },
    onChanged: (value) {
     onChangeValue(value);
    },
    decoration:  InputDecoration(
      label: Text(label,style: TextStyle(
       color: Theme.of(context).primaryColor
      ),),
      hintText: placeholder ,
     counterStyle: TextStyle(
         color: Theme.of(context).primaryColor

     ),
     enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
       color: Colors.grey
      )
     ),
     focusedBorder: OutlineInputBorder(
         borderSide: BorderSide(
             color: Theme.of(context).primaryColor
         )
     ),
     border: OutlineInputBorder(
      borderSide: BorderSide(
       color: Theme.of(context).primaryColor
      )
     )
    ),
    controller:txtcontroller ,
    enabled: true,
    maxLines: 2,
    maxLength: 50,
    keyboardType: TextInputType.text,
  );
}