import 'package:flutter/material.dart';

///////////////////////////////////////////////////////////////////////////////
///Navigator
void navigateTo({required BuildContext context,required Widget widget})=>Navigator.push(context, MaterialPageRoute(builder: (context) => widget,));


