import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UHelperFunctions {
  UHelperFunctions._(); // private constructor

  // show snackbar
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // show alert
  static void showAlert(String title, String message, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // Navigate to other screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  // truncate text
  static String truncateText(String text, int maxLength) {
    if (text.length > maxLength) {
      return '${text.substring(0, maxLength)}...';
    } else {
      return text;
    }
  }

  // Is dark mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenHeight(BuildContext context) {
    return getScreenSize(context).height;
  }

  static double screenWidth(BuildContext context) {
    return getScreenSize(context).width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<U> removeDuplicates<U>(List<U> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      wrappedList.add(widgets[i]);
      if (i < widgets.length - 1) {
        final rowChildren = widgets.sublist(
            i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
        wrappedList.add(Row(children: rowChildren));
      }
    }
    return wrappedList;
  }
}
