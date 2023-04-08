import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      'Hello ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                    ),
                    Text(
                      appStateNotifier.userDto!.username.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondaryContainer,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                    ),
                    Text(
                      ' !',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondaryContainer,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                    height: 25.h,
                    width: 100.w,
                    child: const Image(
                      image: AssetImage(AssetConstants.home),
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 10.h,
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
                        SizedBox(
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
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp),
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
                  height: 18.h,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                            //height: 10.h,
                            width: 35.w,
                            //color: Colors.yellow,
                            child: SvgPicture.asset(
                              AssetConstants.settings,
                              fit: BoxFit.contain,
                            )),
                        Column(
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  'Display Mode',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.sp),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                SizedBox(
                                  width: 50.w,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.w),
                                    child: Text(
                                      'This setting is applied for the content across the app',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10.sp),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  children: <Widget>[
                                    PrimaryButton(
                                      text: 'Dark',
                                      onPressed: () {},
                                      height: 4.h,
                                      width: 10.w,
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .onTertiaryContainer,
                                      borderColor: Theme.of(context)
                                          .colorScheme
                                          .onTertiaryContainer,
                                      textColor: Theme.of(context)
                                          .colorScheme
                                          .onTertiary,
                                      elevation: 0,
                                      borderRadius: 1.w,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    PrimaryButton(
                                      text: 'Light',
                                      onPressed: () {},
                                      height: 4.h,
                                      width: 10.w,
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .onTertiaryContainer,
                                      borderColor: Theme.of(context)
                                          .colorScheme
                                          .onTertiaryContainer,
                                      textColor: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      elevation: 0,
                                      borderRadius: 1.w,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 1.h,
                // ),
                Text(
                                  'Caterory',
                                  textAlign: TextAlign.left,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14.sp),
                                ),
                                SizedBox(height: 1.h,),
                GestureDetector(
                  onTap: () {navigator<NavigationService>().navigateTo(CoreRoutes.planetRoute);},
                  child: Container(
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
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                            ),
                            Positioned(
                                top: 2.h,
                                bottom: 1.h,
                                left: 1.h,
                                child: SizedBox(
                                    height: 8.h,
                                    width: 8.h,
                                    child: SvgPicture.asset(
                                        AssetConstants.geo)))
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
          ),
        ),
      ),
    );
  }
}
