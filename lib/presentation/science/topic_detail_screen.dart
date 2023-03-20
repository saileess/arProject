import 'package:flutter/material.dart';
import 'package:major_project/domain/constants/assets_constants.dart';
import 'package:major_project/domain/constants/string_constants.dart';
import 'package:sizer/sizer.dart';

import '../core/widgets/primary_button.dart';

class TopicDetailScreen extends StatelessWidget {
  const TopicDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 40.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(4.w),
                          bottomRight: Radius.circular(4.w),
                        ),
                        child: Image.asset(
                          AssetConstants.heart,
                          fit: BoxFit.cover,
                        ))
                        ),
                Positioned(
                    top: 5.h,
                    left: 4.w,
                    child: const Icon(Icons.arrow_back_ios_new)),
                Positioned(
                    bottom: 2.h,
                    left: 2.w,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Text(
                        HomeConstants.humanHeartBasics,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: Column(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 3.h,),
                  PrimaryButton(
                    height: 6.h,
                    text: HomeConstants.viewArModel, 
                  onPressed: () {
                    // navigator<NavigationService>().navigateTo(CoreRoutes.localRoute);
                  },
                  backgroundColor: Theme.of(context).primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        elevation: 0,
                        borderRadius: 8.w,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
