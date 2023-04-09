import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:major_project/domain/configs/app_config.dart';
import 'package:major_project/domain/services/navigation_services/routers/route_name.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../application/auth/login/login_bloc.dart';
import '../../../domain/configs/injection.dart';
import '../../../domain/constants/assets_constants.dart';
import '../../../domain/constants/string_constants.dart';
import '../../../domain/core/validators/custom_form_field_validator.dart';
import '../../../domain/services/navigation_services/navigation_service.dart';
import '../../core/widgets/custom_textfield.dart';
import '../../core/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStateNotifier = Provider.of<AppStateNotifier>(context);

    return BlocProvider(
      create: (context) =>
          LoginBloc(LoginState.initial(appStateNotifier: appStateNotifier)),
      child: const LoginScreenConsumer(),
    );
  }
}

class LoginScreenConsumer extends StatelessWidget {
  const LoginScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isSuccessful && state.errorMessage.isNotEmpty) {
          Provider.of<AppStateNotifier>(context, listen: false)
              .updateAfterAuthChange(
                  isAuthorized: true, userDto: state.userDto!);
          Future.delayed(const Duration(milliseconds: 500)).then((x) async {
            navigator<NavigationService>()
                .navigateTo(CoreRoutes.bottomnav, isClearStack: true);
          });
        } else if (state.isFailed) {
          if (state.errorMessage.isNotEmpty) {
            ErrorConstants.showToast(state.errorMessage);
          }
          context.read<LoginBloc>().add(const LoginEvent.callResetState());
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              AuthConstants.login,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w300,
                  fontSize: 16.sp),
            ),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: state.formKey,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: 80.w,
                        //color: Colors.red,
                          child: SvgPicture.asset(
                        AssetConstants.login,
                        fit: BoxFit.contain,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 1.h,
                            ),
                            CustomTextField(
                              hintText: AuthConstants.emailAddress,
                              inputWithLabel: true,
                              labelText: AuthConstants.emailAddress,
                              controller: state.userEmailController,
                              isLabelTextColor: true,
                              labelTextColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                              customFillColor: true,
                              fillColor: Theme.of(context).colorScheme.tertiary,
                              errorText: state.errorEmail.isNotEmpty
                                  ? state.errorEmail
                                  : null,
                              validator: (val) {
                                return CustomFormFieldValidator
                                    .emailFieldValidator(val);
                              },
                              onChanged: (_) {
                                context
                                    .read<LoginBloc>()
                                    .add(const LoginEvent.onEmailChanged());
                              },
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            CustomTextField(
                              inputWithLabel: true,
                              hintText: AuthConstants.password,
                              labelText: AuthConstants.password,
                              isLabelTextColor: true,
                              labelTextColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                              controller: state.passwordController,
                              obscureText: true,
                              customFillColor: true,
                              fillColor: Theme.of(context).colorScheme.tertiary,
                              errorText: state.errorPassword.isNotEmpty
                                  ? state.errorPassword
                                  : null,
                              validator: (val) {
                                return CustomFormFieldValidator
                                    .passwordFieldValidator(val);
                              },
                              onChanged: (_) {
                                context
                                    .read<LoginBloc>()
                                    .add(const LoginEvent.onPasswordChanged());
                              },
                              // suffixIcon: InkWell(
                              //   onTap: () {
                              //     BlocProvider.of<LoginBloc>(context)
                              //         .add(LoginEvent.emitFromAnywhere(
                              //       state: state.copyWith(
                              //           obscurePassword:
                              //               !state.obscurePassword),
                              //     ));
                              //   },
                              //   child: ClipRRect(
                              //     borderRadius: BorderRadius.circular(20),
                              //     child: SizedBox(
                              //       width: 10.w,
                              //       child: Center(
                              //           child: SvgPicture.asset(
                              //         state.obscurePassword
                              //             ? AssetConstants.showPasswordSvg
                              //             : AssetConstants.hidePasswordSvg,
                              //         fit: BoxFit.cover,
                              //         alignment: Alignment.centerRight,
                              //       )
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AuthConstants.dontHaveAnAcc,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11.sp),
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      navigator<NavigationService>()
                                          .navigateTo(AuthRoutes.signUpRoute);
                                    },
                                    child: Text(
                                      AuthConstants.signUp,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11.sp),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            PrimaryButton(
                              text: AuthConstants.login,
                              textColor:
                                  Theme.of(context).colorScheme.background,
                              height: 6.h,
                              onPressed: () {
                                if (state.formKey.currentState!.validate()) {
                                  context
                                      .read<LoginBloc>()
                                      .add(const LoginEvent.onLoginPressed());
                                }
                              },
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                              borderColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              elevation: 0,
                              borderRadius: 2.w,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(children: [
                              const Expanded(
                                  child: Divider(
                                thickness: 0.5,
                                color: Colors.white,
                              )),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: Text(AppConstants.or,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w300)),
                              ),
                              const Expanded(
                                  child: Divider(
                                thickness: 0.5,
                                color: Colors.white,
                              )),
                            ]),
                            SizedBox(
                              height: 3.h,
                            ),
                            TextButton(
                                onPressed: () {
                                  context
                                      .read<LoginBloc>()
                                      .add(const LoginEvent.signInWithGoogle());
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sign In with Google ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp),
                                    ),
                                    CircleAvatar(
                                      radius: 1.5.h,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: const AssetImage(
                                          AssetConstants.google),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }
}
