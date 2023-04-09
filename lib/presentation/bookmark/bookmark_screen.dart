import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:major_project/domain/configs/injection.dart';
import 'package:major_project/domain/constants/assets_constants.dart';
import 'package:major_project/domain/services/navigation_services/navigation_service.dart';
import 'package:major_project/domain/services/navigation_services/routers/route_name.dart';
import 'package:major_project/infrastructure/dtos/planet_dto/planet_dto.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../application/cards/bookmark/bookmark_bloc.dart';
import '../../domain/configs/app_config.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier =
        Provider.of<AppStateNotifier>(context);
    return BlocProvider(
      create: (context) => BookmarkBloc(
          BookmarkState.initial(appStateNotifier: appStateNotifier))
        ..add(const BookmarkEvent.onLoad()),
      child: const BookmarkScreenConsumer(),
    );
  }
}

class BookmarkScreenConsumer extends StatelessWidget {
  const BookmarkScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookmarkBloc, BookmarkState>(
      listener: (context, state) {
        
      },
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Text(
                        'Bookmarks',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                            fontWeight: FontWeight.w200,
                            fontSize: 16.sp),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Expanded(
                      child: ListView.separated(
                                        scrollDirection: Axis.vertical,
                                        itemCount: state.userBookmarkList.length,
                                        controller: state.scrollController,
                                        separatorBuilder: (ctx, i) {
                                          return SizedBox(
                                            height: 2.h,
                                          );
                                        },
                                        itemBuilder: (ctx, i) {
                                          int mainIndex = i;
                    
                                          if (mainIndex <
                                              state.userBookmarkList.length) {
                                            return BookmarkCard(planetDto: state.userBookmarkList[i], onTapped: () { 
                                              navigator<NavigationService>().navigateTo(CoreRoutes.planetDetails, queryParams: {
                                                'planetID': state.userBookmarkList[i].docID
                                              });
                                            },);
                                          } else {
                                            return Container(
                                              color: Colors.red,
                                            );
                                          }
                                        },
                                        padding: EdgeInsets.only(
                                            right: 1.w,
                                            left: 1.w,
                                            top: 1.h,
                                            bottom: 1.h),
                                      ),
                    ),
                  ]),
            ),
          ),
        );
      },
    );
  }
}



class BookmarkCard extends StatelessWidget {
  final PlanetDto planetDto;
  final Function()? onTapped;
  
  const BookmarkCard({
    Key? key, required this.planetDto, required this.onTapped
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: 14.h,
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2.w)),
          //color: Theme.of(context).colorScheme.tertiary,
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      planetDto.name,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onTertiary,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                      width: 40.w,
                      child: Text(
                        'Module: Geography',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onTertiary,
                            fontWeight: FontWeight.w300,
                            fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
              
              Container(
                //color: Colors.red,
                  height: 15.h,
                  width: 40.w,
                  //color: Colors.yellow,
                  child: SvgPicture.asset(
                    AssetConstants.bookmark,
                    fit: BoxFit.cover,
                  )
                  )
            ],
          ),
        ),
      ),
    );
  }
}



