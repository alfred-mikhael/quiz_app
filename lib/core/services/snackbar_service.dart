import 'package:flutter/material.dart';

/// Wrapper for [ScaffoldMessengerState] so that it can be accessed without a
/// [BuildContext].
///
/// Note that this will only provide access to the root [Scaffold] widget, but,
/// since each View instantiates its own [Scaffold], it should always affect
/// the current page.
///
/// For another class with similar functionality and design, see [NavigationService].
class SnackBarService {
  final GlobalKey<ScaffoldMessengerState> key =
      GlobalKey<ScaffoldMessengerState>();

  void showSnackBar(SnackBar snackBar) {
    key.currentState!.showSnackBar(snackBar);
  }
}