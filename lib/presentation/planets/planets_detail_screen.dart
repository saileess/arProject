import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:major_project/domain/configs/injection.dart';
import 'package:major_project/domain/services/navigation_services/navigation_service.dart';
import 'package:major_project/domain/services/navigation_services/routers/route_name.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../application/cards/planet/planet_details/planet_details_bloc.dart';
import '../../domain/configs/app_config.dart';
import '../../domain/constants/string_constants.dart';
import '../core/widgets/primary_button.dart';

class PlanetsDetailScreen extends StatelessWidget {
  final String planetID;
  const PlanetsDetailScreen({Key? key, required this.planetID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier =
        Provider.of<AppStateNotifier>(context);
    return BlocProvider(
        create: (context) => PlanetDetailsBloc(PlanetDetailsState.initial(
            appStateNotifier: appStateNotifier, planetID: planetID))
          ..add(const PlanetDetailsEvent.onLoad()),
        child: const PlanetsDetailScreenConsumer());
  }
}

class PlanetsDetailScreenConsumer extends StatelessWidget {
  const PlanetsDetailScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlanetDetailsBloc, PlanetDetailsState>(
      listener: (context, state) {
        if(state.isUserUpdated){
        Provider.of<AppStateNotifier>(context, listen: false).updateAfterAuthChange(isAuthorized: true, userDto: state.userDto!);
        context.read<PlanetDetailsBloc>().add(PlanetDetailsEvent.emitFromAnywhere(state: state.copyWith(isUserUpdated: false)));
          
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor:Theme.of(context).colorScheme.onTertiary,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.w, top: 1.h, bottom: 0),
                  child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Theme.of(context).colorScheme.tertiary,
                              size: 5.w,
                            ),
                          ),
                ),
                Expanded(
                    child: state.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : state.planetDto == null
                            ? Center(
                                child: Text(
                                  'Unable to planet details. Please try again!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontSize: 18.sp,
                                      ),
                                ),
                              )
                            : PlanetDetailsContainer(
                                imageUrl: state.planetDto!.imageUrl,
                                detailedPara: state.planetDto!.detail,
                                title: state.planetDto!.name,
                                state: state,
                                onToggleBookmark: () {
                                  context.read<PlanetDetailsBloc>().add(
                                      const PlanetDetailsEvent.onClickBookmark());
                                },
                              )),
              ],
            ),
          ),
        );
      },
    );
  }
}

class PlanetDetailsContainer extends StatelessWidget {
  final Function()? onToggleBookmark;
  final PlanetDetailsState state;
  final String imageUrl;
  final String detailedPara;
  final String title;
  const PlanetDetailsContainer(
      {Key? key,
      required this.imageUrl,
      required this.detailedPara,
      required this.title,
      this.onToggleBookmark,
      required this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                child: Image.network(imageUrl),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 3.w),
                  child: GestureDetector(
                    onTap: onToggleBookmark,
                    child: state.isUpdatingBookmark
                        ? SizedBox(
                            height: 5.w,
                            width: 5.w,
                            child: const CircularProgressIndicator(),
                          )
                        : Icon( state.isBookmark ? 
                            Icons.bookmark : Icons.bookmark_outline, 
                            color: state.isBookmark
                                ? Colors.red
                                : Theme.of(context).colorScheme.tertiary,
                            size: 3.h,
                          ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
            child: Column(
              children: [
                Text(
                  detailedPara,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 3.h,
                ),
                PrimaryButton(
                  height: 5.h,
                  text: HomeConstants.viewArModel,
                  textColor: Theme.of(context).colorScheme.onTertiary,
                  onPressed: () {
                    navigator<NavigationService>()
                        .navigateTo(CoreRoutes.arRoute, queryParams: {
                          'name': state.planetDto!.name,
                        });
                  },
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  borderColor: Theme.of(context).colorScheme.primary,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  elevation: 0,
                  borderRadius: 8.w,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
