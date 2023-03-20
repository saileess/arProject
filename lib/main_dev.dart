import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:major_project/app.dart';
import 'package:major_project/domain/configs/app_config.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final appConfig = AppConfig(
    appTitle: 'Major_Project_dev', 
    buildFlavor: "dev", 
    child: Container()
    );
    appInitializer(appConfig);
}
