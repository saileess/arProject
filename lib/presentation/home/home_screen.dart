import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:major_project/presentation/auth/logout/logout_screen.dart';
import 'package:major_project/presentation/core/widgets/primary_button.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../domain/configs/app_config.dart';
import '../../domain/configs/injection.dart';
import '../../domain/constants/assets_constants.dart';
import '../../domain/services/navigation_services/navigation_service.dart';
import '../../domain/services/navigation_services/routers/route_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreenConsumer();
  }
}

class HomeScreenConsumer extends StatelessWidget {
  const HomeScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStateNotifier =
        Provider.of<AppStateNotifier>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Hello ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                        ),
                        Text(
                          appStateNotifier.userDto!.username.toUpperCase(),
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                  ),
                        ),
                        Text(
                          ' !',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
showDialog(
        context: context,
        builder: (context) {
          return LogOutPopup();
        });
                          },
                          child: Text(
                            'Logout',
                            style:
                                Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.sp,
                                      decoration: TextDecoration.underline,
                                      decorationStyle: TextDecorationStyle.double
                                    ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // SizedBox(
                //   height: 2.h,
                // ),
                SizedBox(
                    height: 25.h,
                    width: 100.w,
                    child: SvgPicture.asset(
                      AssetConstants.homeGuy,
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 9.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2.w)),
                    //color: Theme.of(context).colorScheme.tertiary,
                    // color: Color(0xFFD1EAFE),
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            navigator<NavigationService>()
                                .navigateTo(CoreRoutes.wallRoute);
                          },
                          child: SizedBox(
                            //color: Colors.red,
                            width: 45.w,
                            child: Text(
                              'Click to checkout our upcoming models !!!!',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onTertiary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 10.h,
                            width: 30.w,
                            //color: Colors.yellow,
                            child: SvgPicture.asset(
                              AssetConstants.clickHereBro,
                              fit: BoxFit.contain,
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  //color: Colors.red,
                  height: 16.h,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                            height: 14.h,
                            width: 35.w,
                            //color: Colors.yellow,
                            child: SvgPicture.asset(
                              AssetConstants.settings,
                              fit: BoxFit.contain,
                            )),
                            SizedBox(
                              width: 40.w,
                              child: Text(
'Learning that comes to life.',  style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14.sp),
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Explore Caterory:',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigator<NavigationService>()
                            .navigateTo(CoreRoutes.planetRoute);
                      },
                      child: Container(
                        // height: 13.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3.5.w),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 10.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(3.w),
                                      topRight: Radius.circular(3.w),
                                    ),
                                    //color: Colors.white
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                                ),
                                Positioned(
                                    top: 0.1.h,
                                    bottom: 0.1.h,
                                    left: 1.h,
                                    child: SizedBox(
                                        height: 9.h,
                                        width: 9.h,
                                        child: SvgPicture.asset(
                                          AssetConstants.geo,
                                          fit: BoxFit.cover,
                                        )))
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Geography',
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background),
                                  ),
                                  Text(
                                    '>',
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
