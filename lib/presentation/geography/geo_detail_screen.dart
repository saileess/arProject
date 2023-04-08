import 'package:flutter/material.dart';
import 'package:major_project/domain/constants/string_constants.dart';
import 'package:sizer/sizer.dart';

import '../../domain/constants/assets_constants.dart';
import '../core/widgets/primary_button.dart';
import '../science/science_details_screen.dart';

class GeographyDetailScreen extends StatelessWidget {
  const GeographyDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GeographyDeatailScreenConsumer();
  }
}

class GeographyDeatailScreenConsumer extends StatelessWidget {
  const GeographyDeatailScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                      radius: 8.h,
                      backgroundImage: const AssetImage(
                        AssetConstants.geography,
                      )),
                      SizedBox(width: 2.w,),
                  
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Start your Science Journey with\n us and set your daily goals',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      PrimaryButton(text: 'set a goal', onPressed: (){},
                      width: 20.w,
                      height: 3.7.h,
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      borderColor: Theme.of(context).primaryColor,
                      borderRadius: 5.w,
                      elevation: 0,
                      textColor: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ],
              ),
SizedBox(height: 3.h,),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.32.w,
                        crossAxisSpacing: 4.w,
                        mainAxisSpacing: 4.w,
                    ),
                    itemCount: 8,
                    itemBuilder: (ctx, i) => const ModuleCard(image: AssetConstants.earth, topic: HomeConstants.moon))),
            ],
          ),
        ),
      ),
    );
  }
}