import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:major_project/domain/configs/injection.dart';
import 'package:major_project/domain/constants/assets_constants.dart';
import 'package:major_project/domain/services/navigation_services/navigation_service.dart';
import 'package:major_project/domain/services/navigation_services/routers/route_name.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../application/cards/wall/wall_bloc.dart';
import '../../domain/configs/app_config.dart';

class WallScreen extends StatelessWidget {
  const WallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier =
        Provider.of<AppStateNotifier>(context);
    return BlocProvider(
      create: (context) =>
          WallBloc(WallState.initial(appStateNotifier: appStateNotifier))
            ..add(const WallEvent.onload()),
      child: const WallScreenConsumer(),
    );
  }
}

class ObjColors {
  late Color cardColor;
  late String svgImage;
  ObjColors({required this.cardColor, required this.svgImage});
}

class WallScreenConsumer extends StatelessWidget {
  const WallScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ObjColors> listOfColorsAndsvgs = [
      ObjColors(cardColor: const Color(0xFFEEC0C0), svgImage: AssetConstants.bromine),
      ObjColors(
          cardColor: const Color(0xFFC3E0C3), svgImage: AssetConstants.dinosaur),
    ];
    return BlocConsumer<WallBloc, WallState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Upcoming Topics',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w200,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Upcoming models to be posted on our app soon.',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w100,
                          fontSize: 9.sp),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Expanded(
                        child: state.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : state.ListOfTopics.isEmpty
                                ? Center(
                                    child: Text(
                                      'Unable to load data. Please try again!',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 18.sp,
                                          ),
                                    ),
                                  )
                                : ListView.separated(
                                    controller: state.scrollController,
                                    itemCount: state.ListOfTopics.length,
                                    scrollDirection: Axis.vertical,
                                    separatorBuilder: (ctx, i) {
                                      return SizedBox(
                                        height: 2.h,
                                      );
                                    },
                                    itemBuilder: (ctx, i) {
                                      int mainIndex = i;

                                      if (mainIndex <
                                          state.ListOfTopics.length) {
                                        return UpcomingTopicCard(
                                          name: state.ListOfTopics[i].name,
                                          description:
                                              state.ListOfTopics[i].description,
                                          svgImage:
                                              listOfColorsAndsvgs[i].svgImage,
                                          color:
                                              listOfColorsAndsvgs[i].cardColor,
                                          onTapped: () {
                                            navigator<NavigationService>()
                                                .navigateTo(
                                                    CoreRoutes.wallDetailRoute,
                                                    queryParams: {
                                                  'wallID': state
                                                      .ListOfTopics[i].docID
                                                });
                                          },
                                        );
                                      } else {
                                        return Container(
                                          color: Colors.red,
                                        );
                                      }
                                    },
                                  ))
                  ]),
            ),
          ),
        );
      },
    );
  }
}

class UpcomingTopicCard extends StatelessWidget {
  final String name;
  final String description;
  final String svgImage;
  final Color color;
  final Function()? onTapped;
  const UpcomingTopicCard(
      {Key? key,
      required this.name,
      required this.description,
      required this.svgImage,
      required this.onTapped,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: 16.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2.w)),
          //color: Theme.of(context).colorScheme.tertiary,
          color: color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      name,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onTertiary,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                      width: 40.w,
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onTertiary,
                            fontWeight: FontWeight.w300,
                            fontSize: 10.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  // height: 15.h,
                  width: 45.w,
                  //color: Colors.yellow,
                  child: SvgPicture.asset(
                    svgImage,
                    fit: BoxFit.contain,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
