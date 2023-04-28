import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:googleapis/adsense/v2.dart';
import 'package:major_project/domain/services/navigation_services/routers/route_name.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../application/auth/logout/logout_bloc.dart';
import '../../../domain/configs/app_config.dart';
import '../../../domain/configs/injection.dart';
import '../../../domain/constants/assets_constants.dart';
import '../../../domain/services/navigation_services/navigation_service.dart';

class LogOutPopup extends StatelessWidget {
  const LogOutPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStateNotifier = Provider.of<AppStateNotifier>(context);
    return BlocProvider(
      create: (context) =>
          LogoutBloc(LogoutState.initial(appStateNotifier: appStateNotifier)),
      child: const LogOutPopupConsumer(),
    );
  }
}

class LogOutPopupConsumer extends StatelessWidget {
  const LogOutPopupConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogoutBloc, LogoutState>(
      listener: (context, state) {
        if (state.isLoggedOut) {
          Provider.of<AppStateNotifier>(context, listen: false)
              .updateAfterLogout(
                  isAuthorized: false,);
          Future.delayed(const Duration(milliseconds: 300)).then((x) async {
            navigator<NavigationService>()
                .navigateTo(AuthRoutes.loginRoute, isClearStack: true);
          });
        } 
      },
      builder: (context, state) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(
            title: Text('Are you sure you want to Logout?', style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme.onTertiary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    )),
            content: SingleChildScrollView(
            child: SizedBox(
                          height: 15.h,
                            child: SvgPicture.asset(
                          AssetConstants.logout,
                          fit: BoxFit.contain,
                        )),
          ),
          actions: <Widget>[
            TextButton(
                onPressed:() {
                Navigator.of(context).pop();
              },
                child:  Text('Cancel', style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme.onTertiary,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                    )),
              ),
              TextButton(
                onPressed: () {
                context.read<LogoutBloc>().add(const LogoutEvent.onLogOutPressed());
              },
                child:  Text('Logout', style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme.onTertiary,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                    ),), 
              ),
            // TextButton(
            //   child: const Text('Logout'),
            //   onPressed: () {
            //     context.read<LogoutBloc>().add(const LogoutEvent.onLogOutPressed());
            //   },
            // ),
          ],
          ),
        );
      },
    );
  }
}
