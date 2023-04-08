import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:major_project/application/cards/planet/planet_bloc.dart';
import 'package:major_project/domain/constants/assets_constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../domain/configs/app_config.dart';
import '../../domain/configs/injection.dart';
import '../../domain/services/navigation_services/navigation_service.dart';
import '../../domain/services/navigation_services/routers/route_name.dart';

class PlanetScreen extends StatelessWidget {
  const PlanetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier =
        Provider.of<AppStateNotifier>(context);
    return BlocProvider(
        create: (context) => PlanetBloc(PlanetState.initial(
              appStateNotifier: appStateNotifier,
            ))
              ..add(const PlanetEvent.fetchPlanets()),
        child: const PlanetScreenConsumer());
  }
}

class PlanetScreenConsumer extends StatelessWidget {
  const PlanetScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlanetBloc, PlanetState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 5.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Theme.of(context).colorScheme.tertiary,
                        size: 5.w,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Module : 01',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'Planets',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 16.sp),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Expanded(
                        child: state.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : state.ListOfPlanets.isEmpty
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
                                : Container(
                                    height: 55.h,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: state.ListOfPlanets.length,
                                      controller: state.scrollController,
                                      separatorBuilder: (ctx, i) {
                                        return SizedBox(
                                          width: 5.w,
                                        );
                                      },
                                      itemBuilder: (ctx, i) {
                                        int mainIndex = i;

                                        if (mainIndex <
                                            state.ListOfPlanets.length) {
                                          return WhiteSquare(
                                            name: state.ListOfPlanets[i].name,
                                            currentCard: i + 1,
                                            totalCard:
                                                state.ListOfPlanets.length,
                                            readTime:
                                                state.ListOfPlanets[i].readTime,
                                            smallPara: state
                                                .ListOfPlanets[i].smallPara,
                                            onTapped: () {
                                              navigator<NavigationService>()
                                                  .navigateTo(
                                                      CoreRoutes.planetDetails,
                                                      queryParams: {
                                                    'planetID': state
                                                        .ListOfPlanets[i].docID
                                                  });
                                            },
                                          );
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
                                          bottom: 17.h),
                                    ),
                                  )),
                  ]),
            ),
          ),
        );
      },
    );
  }
}

/////////////////////////

class WhiteSquare extends StatelessWidget {
  final String name;
  final String smallPara;
  final String readTime;
  final int currentCard;
  final int totalCard;
  late Function() onTapped;

  WhiteSquare(
      {Key? key,
      required this.name,
      required this.smallPara,
      required this.readTime,
      required this.currentCard,
      required this.totalCard,
      required this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
          // height: 20.h,
          width: 80.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2.w)),
            color: Theme.of(context).colorScheme.tertiary,
            //color: Color(0xff536DFE)
          ),
          child: Column(
            children: [
              Container(
                  // color: Colors.red,
                  height: 30.h,
                  child: const Image(
                    image: AssetImage(AssetConstants.planetsCard),
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: <Widget>[
                        Text(
                          '0$currentCard',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                        ),
                        Text(
                          '〡',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16.sp),
                        ),
                        Text(
                          name,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      smallPara,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.background,
                          fontWeight: FontWeight.w300,
                          fontSize: 10.sp),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cards No.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 8.sp),
                            ),
                            Text(
                              '$currentCard/$totalCard',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Read time',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 8.sp),
                            ),
                            Text(
                              '$readTime mins',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
