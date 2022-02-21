import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CommonWidget {

  static SizedBox smallRowHeight() {
    return SizedBox(height: 8);
  }

  static SizedBox smallRowWidth() {
    return SizedBox(width: 8);
  }

  static SizedBox rowHeight({double height = 16}) {
    return SizedBox(height: height);
  }

  static SizedBox rowWidth({double width = 16}) {
    return SizedBox(width: width);
  }

  static void toast(String error) async {
    await Fluttertoast.showToast(
        msg: error,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }
}
