

import 'package:flutter/material.dart';
import 'package:major_project/domain/constants/string_constants.dart';
import 'package:major_project/presentation/core/widgets/custom_textfield.dart';
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
    final appStateNotifier =  Provider.of<AppStateNotifier>(context, listen: false);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 3.h,),
                      Text(
                        'Hello',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                      ),
                      Text(
                        appStateNotifier.userDto!.username,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                            ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    // onTap: (){
                    //   navigator<NavigationService>().navigateTo(CoreRoutes.myProfileRoute);
                    // },
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 3.5.h,
                      child:  appStateNotifier.userDto == null ? Image.asset(AssetConstants.downloadImg, fit: BoxFit.cover, ) : appStateNotifier.userDto!.profileUrl == null ?  Image.asset(AssetConstants.downloadImg, fit: BoxFit.cover,) : 
                      Image.network(appStateNotifier.userDto!.profileUrl!, fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                hintText: 'Search Topic...',
                customFillColor: true,
                fillColor: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTopicText(subject: HomeConstants.science, onViewMore: (){
                navigator<NavigationService>()
                      .navigateTo(CoreRoutes.scienceDetailsRoute);
              },),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                height: 30.h,
                child: Expanded(
      
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.4.w,
                          crossAxisSpacing: 3.w,
                          mainAxisSpacing: 3.w,
                        ),
                        itemCount: 4,
                        itemBuilder: (ctx, i) => CustomTopicCard(
                            icon: i.isEven
                                ? AssetConstants.heart
                                : AssetConstants.brain,
                            cardText: i.isEven
                                ? HomeConstants.humanHeart
                                : HomeConstants.humanBrain,
                                
                                ))),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTopicText(
                subject: HomeConstants.geography,
                onViewMore: () {
                  navigator<NavigationService>()
                      .navigateTo(CoreRoutes.geographyDetailsRoute);
                },
              ),
              SizedBox(
                height: 2.h,
              ),
      
              SizedBox(
                height: 30.h,
                child: Expanded(
      
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.4.w,
                          crossAxisSpacing: 3.w,
                          mainAxisSpacing: 3.w,
                        ),
                        itemCount: 4,
                        itemBuilder: (ctx, i) => CustomTopicCard(
                            icon: i.isEven
                                ? AssetConstants.earth
                                : AssetConstants.moon,
                            cardText: i.isEven
                                ? HomeConstants.earth
                                : HomeConstants.moon))),
              ),
              // SizedBox(
              //   height: 30.h,
              //   child: Expanded(
              //       child: GridView.builder(
              //           physics: const NeverScrollableScrollPhysics(),
              //           padding: EdgeInsets.symmetric(horizontal:2.w, vertical: 1.h),
              //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //             crossAxisCount: 2,
              //             childAspectRatio: 0.4.w,
              //             crossAxisSpacing: 1.w,
              //             mainAxisSpacing: 1.w,
              //           ),
              //           itemCount: 4,
              //           itemBuilder: (ctx, i) => CustomTopicCard(
              //               icon: i.isEven
              //                   ? AssetConstants.earth
              //                   : AssetConstants.moon,
              //               CardText: i.isEven
              //                   ? HomeConstants.earth
              //                   : HomeConstants.moon))),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTopicCard extends StatelessWidget {
  final String icon;
  final String cardText;

  const CustomTopicCard({Key? key, required this.icon, required this.cardText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            image: DecorationImage(image: AssetImage(icon), fit: BoxFit.cover),
          ),
        ),
        Positioned(
            bottom: 4.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Text(
                cardText,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).colorScheme.background),
              ),
            ))
      ],
    );
  }
}

class CustomTopicText extends StatelessWidget {
  final String subject;
  final Function() onViewMore;

  const CustomTopicText(
      {Key? key, required this.subject, required this.onViewMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              subject,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              HomeConstants.relatedTopic,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        GestureDetector(
          onTap: onViewMore,
          child: Text(
            HomeConstants.viewMore,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
