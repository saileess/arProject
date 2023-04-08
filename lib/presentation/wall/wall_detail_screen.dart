import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../application/cards/wall/wall_detail/wall_detail_bloc.dart';
import '../../domain/configs/app_config.dart';

class WallDetailScreen extends StatelessWidget {
  final String wallID;
  const WallDetailScreen({Key? key, required this.wallID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier =
        Provider.of<AppStateNotifier>(context);
    return BlocProvider(
        create: (context) => WallDetailBloc(WallDetailState.initial(
            appStateNotifier: appStateNotifier, wallID: wallID))
          ..add(const WallDetailEvent.onLoad()),
        child: const WallDetailScreenConsumer());
  }
}

class WallDetailScreenConsumer extends StatelessWidget {
  const WallDetailScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WallDetailBloc, WallDetailState>(
      listener: (context, state) {},
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
                        : state.wallDto == null
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
                            : WallDetailContainer(imageUrl: state.wallDto!.imageUrl, detailedPara: state.wallDto!.detail, title: state.wallDto!.name)
                              ),
              ],
            ),
          ),
        );
      },
    );
  }
}







class WallDetailContainer extends StatelessWidget {
  final String imageUrl;
  final String detailedPara;
  final String title;
  const WallDetailContainer(
      {Key? key,
      required this.imageUrl,
      required this.detailedPara,
      required this.title,
      })
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
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
