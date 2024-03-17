import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constants/Colors Manager/colors_manager.dart';

///////////////////////////////////////////////////////////////////////////////////////////
Widget verificationField({required dynamic context})=>SizedBox(
  height: 48,
  width: 48,
  child: TextFormField(
    style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
    keyboardType: TextInputType.phone,
    textAlign: TextAlign.center,
    onChanged: (value){
      if(value.length==1)
      {
        FocusScope.of(context).nextFocus();
      }
    },
    inputFormatters:
    [
      LengthLimitingTextInputFormatter(1),
      FilteringTextInputFormatter.digitsOnly,
    ],
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),

      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColor.secondaryColor)

      ),
    ),
  ),
);