import 'package:flutter/material.dart';
import 'package:major_project/domain/configs/injection.dart';
import 'package:major_project/domain/constants/string_constants.dart';
import 'package:major_project/domain/services/navigation_services/navigation_service.dart';
import 'package:major_project/domain/services/navigation_services/routers/route_name.dart';
import 'package:major_project/presentation/core/widgets/primary_button.dart';
import 'package:sizer/sizer.dart';

import '../../domain/constants/assets_constants.dart';

class ScienceDetailScreen extends StatelessWidget {
  const ScienceDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScienceDeatailScreenConsumer();
  }
}

class ScienceDeatailScreenConsumer extends StatelessWidget {
  const ScienceDeatailScreenConsumer({Key? key}) : super(key: key);

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
                        AssetConstants.bio,
                      )),
                      SizedBox(width: 2.w,),
                  Column(
                    children: [
                      Text(
                        'Start your Science Journey with\nus and set your daily goals.',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                      ),
                      PrimaryButton(
                        text: 'Set a Goal',
                        onPressed: () {
                          navigator<NavigationService>()
                .navigateTo(CoreRoutes.quizRoute);
                        },
                        width: 20.w,
                        height: 3.7.h,
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
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
              SizedBox(
                height: 3.h,
              ),
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
                      itemBuilder: (ctx, i) => ModuleCard(
                          image: AssetConstants.heart, topic: HomeConstants.humanHeartBasics, onClick: (){
                            navigator<NavigationService>().navigateTo(CoreRoutes.moduleDetailRoute);
                          },))),
            ],
          ),
        ),
      ),
    );
  }
}

class ModuleCard extends StatelessWidget {
  final String image;
  final String topic;
  final Function()? onClick;
  const ModuleCard(
      {Key? key, required this.image, required this.topic, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        // width: 42.w,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(2.w),
          border: Border.all(
              color: Theme.of(context).colorScheme.tertiary, width: 0.2),
          // boxShadow: [BoxShadow(color: Color.fromARGB(255, 164, 204, 224), offset: Offset(0.0, 1.0), blurRadius: 0.7.w)]
        ),
        child: Column(
          children: [
            Container(
                height: 11.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2.w),
                      topRight: Radius.circular(2.w),
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ))),
                    SizedBox(height: 1.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text(
                  topic,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp),
                ),
                // Icon(
                //   Icons.arrow_forward_ios_outlined,
                //   size: 1.5.h,
                //   color: Theme.of(context).colorScheme.tertiary,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
