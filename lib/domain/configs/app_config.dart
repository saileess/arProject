import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:major_project/infrastructure/user/user_dto.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isAuthorized;
  UserDto? userDto;
  AppStateNotifier({
    required this.isAuthorized,
    this.userDto,
  });

  Future<void> updateAfterAuthChange({
    required bool isAuthorized,
    required UserDto userDto,
  }) async {
    this.isAuthorized = isAuthorized;
    this.userDto = userDto;
    notifyListeners();
  }

  Future<void> notifyState() async {
    notifyListeners();
  }
}


class AppConfig extends InheritedWidget {
  final String appTitle;
  final String buildFlavor;
  @override
  // ignore: overridden_fields
  final Widget child;

  const AppConfig({
    Key? key,
    required this.appTitle,
    required this.buildFlavor,
    required this.child,
  }) : super(key: key, child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}