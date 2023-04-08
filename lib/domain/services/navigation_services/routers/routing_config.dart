import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:major_project/domain/extensions/string_extensions.dart';
import 'package:major_project/domain/services/navigation_services/routers/route_name.dart';
import 'package:major_project/presentation/bookmark/bookmark_screen.dart';
import 'package:major_project/presentation/home/bottomnavbar.dart';
import 'package:major_project/presentation/planets/planets_detail_screen.dart';
import 'package:major_project/presentation/planets/planets_screen.dart';
import 'package:major_project/presentation/science/science_details_screen.dart';
import 'package:major_project/presentation/science/topic_detail_screen.dart';


import '../../../../infrastructure/dtos/planet_dto/planet_dto.dart';
import '../../../../presentation/auth/login/login_screen.dart';
import '../../../../presentation/auth/register/signup_screen.dart';
import '../../../../presentation/geography/geo_detail_screen.dart';
import '../../../../presentation/home/home_screen.dart';
import '../../../../presentation/wall/wall_screen.dart';
Route<dynamic> authorizedNavigation(RouteSettings settings) {
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case CoreRoutes.homeRoute:
      return _getPageRoute(const HomeScreen(), settings);
    case CoreRoutes.scienceDetailsRoute:
      return _getPageRoute(const ScienceDetailScreen(), settings);
    case CoreRoutes.geographyDetailsRoute:
      return _getPageRoute(const GeographyDetailScreen(), settings);
    case CoreRoutes.moduleDetailRoute:
      return _getPageRoute(const TopicDetailScreen(), settings);
    case CoreRoutes.bottomnav:
      return _getPageRoute(const BottomNav(), settings);
    case CoreRoutes.bookmarkRoute:
      return _getPageRoute(const BookmarkScreen(), settings);
    case CoreRoutes.wallRoute:
      return _getPageRoute(const WallScreen(), settings);
    case CoreRoutes.planetRoute:
      return _getPageRoute(const PlanetScreen(), settings);
    case CoreRoutes.planetDetails:
    print(routingData.queryParameters);
    final routeData = routingData.queryParameters;
    
    
  return _getPageRoute( PlanetsDetailScreen(planetID : routeData['planetID']?? ''), settings);

    // case CoreRoutes.localRoute:
    //   return _getPageRoute(const LocalObject(), settings);
    // case CoreRoutes.webRoute:
    //   return _getPageRoute(const WebObjectsView(), settings);


    default:
      return commonNavigation(settings);
  }
}

Route<dynamic> commonNavigation(RouteSettings settings) {
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case AuthRoutes.loginRoute:
      return _getPageRoute(const LoginScreen(), settings);
    case AuthRoutes.signUpRoute:
      return _getPageRoute(const SignUpScreen(), settings);


    default:
      return _getPageRoute(
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'DEFAULT ROUTE !',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1.5,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          settings);
  }
}

PageRoute _getPageRoute(
  Widget child,
  RouteSettings settings, {
  bool mainRoute = false,
}) {
  //return CupertinoRoute(enterPage: child);
  if (Platform.isIOS && !mainRoute) {
    return CupertinoPageRoute(builder: (BuildContext context) => child);
  } else {
    return MaterialPageRoute(builder: (BuildContext context) => child);
  }
}