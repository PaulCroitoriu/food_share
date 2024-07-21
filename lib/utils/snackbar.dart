import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void showInfo({required BuildContext context, required String message}) {
  _showFlashbar(
    context: context,
    message: message,
    color: Colors.blueAccent,
    icon: Icons.info,
  );
}

void showSuccess({required BuildContext context, required String message, int? duration, FutureOr<void> Function()? callback}) {
  _showFlashbar(
    context: context,
    message: message,
    color: Colors.green,
    icon: Icons.check,
    callback: callback,
  );
}

void showWarning({required BuildContext context, required String message, int? duration}) {
  _showFlashbar(
    context: context,
    message: message,
    color: Colors.orange,
    icon: Icons.warning,
  );
}

void showError({required BuildContext context, required String message, int? duration}) {
  _showFlashbar(
    context: context,
    message: message,
    color: const Color.fromARGB(255, 214, 27, 14),
    icon: Icons.error,
  );
}

void _showFlashbar({
  required BuildContext context,
  required String message,
  required Color color,
  required IconData icon,
  int? duration,
  FutureOr<void> Function()? callback,
}) {
  Flushbar(
    flushbarPosition: FlushbarPosition.BOTTOM,
    flushbarStyle: FlushbarStyle.FLOATING,
    backgroundColor: color.withOpacity(0.8),
    borderRadius: BorderRadius.circular(4),
    margin: const EdgeInsets.all(12),
    barBlur: 5,
    isDismissible: true,
    icon: Icon(icon, color: Colors.white, size: 26),
    messageText: Text(message, style: const TextStyle(color: Colors.white)),
    duration: Duration(seconds: duration ?? 5),
  ).show(context).whenComplete(callback ?? () {});
}
