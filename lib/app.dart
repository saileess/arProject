import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:major_project/domain/themes/app_themes.dart';
import 'package:major_project/infrastructure/user/user_dto.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'domain/configs/app_config.dart';
import 'domain/configs/injection.dart';
import 'domain/services/navigation_services/navigation_service.dart';
import 'domain/services/navigation_services/routers/route_name.dart';
import 'domain/services/navigation_services/routers/routing_config.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: appThemeData[AppTheme.light],
      builder: (context, child) => Container(
          alignment: Alignment.center,
          decoration: SizerUtil.width == 430
              ? const BoxDecoration(
                  border: Border.symmetric(
                      vertical: BorderSide(
                  color: Colors.black,
                  width: 2,
                )))
              : null,
          child: child!),
      navigatorKey: navigator<NavigationService>().navigatorKey,
      onGenerateRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? authorizedNavigation
          : commonNavigation,
      initialRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? CoreRoutes.homeRoute
          : AuthRoutes.loginRoute,
    );
  }
}

Future appInitializer(AppConfig appConfig) async {
  User? user = FirebaseAuth.instance.currentUser;
  bool isAuthorized = false;
  UserDto? userDto;

  if(user != null){
isAuthorized = true;
userDto = UserDto(id: user.uid, username: user.displayName!, email: user.email!, college: '', );
  }
  

  AppStateNotifier appStateNotifier = AppStateNotifier(
    isAuthorized: isAuthorized,
    userDto:  userDto
  );
  final AppConfig configuredApp = AppConfig(
    appTitle: appConfig.appTitle,
    buildFlavor: appConfig.buildFlavor,
    child: ChangeNotifierProvider<AppStateNotifier>(
        create: (context) {
          return appStateNotifier;
        },
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 430,
              maxHeight: double.infinity,
            ),
            child: Sizer(
              builder: (context, orientation, deviceType) {
                // ignore: prefer_const_constructors
                return Directionality(
                  textDirection: TextDirection.ltr,
                  // ignore: prefer_const_constructors
                  child: MainApp(),
                );
              },
            ),
          ),
        )),
  );
  setupLocator(GlobalKey<NavigatorState>());
  return runApp(
    configuredApp,
  );
}
