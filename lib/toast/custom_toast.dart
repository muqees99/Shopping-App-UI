import 'package:fluttertoast/fluttertoast.dart';

import '../constants/colors.dart';

class CustomToast {
  static void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: PrimaryColors.primaryYellow,
      textColor: TextColors.textColor1,
      fontSize: 16.0,
    );
  }
}
