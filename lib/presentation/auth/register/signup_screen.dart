import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:major_project/domain/constants/string_constants.dart';
import 'package:major_project/domain/services/navigation_services/routers/route_name.dart';
import 'package:major_project/presentation/core/widgets/custom_textfield.dart';
import 'package:major_project/presentation/core/widgets/primary_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../application/auth/sign_up/sign_up_bloc.dart';
import '../../../domain/configs/app_config.dart';
import '../../../domain/configs/injection.dart';
import '../../../domain/constants/assets_constants.dart';
import '../../../domain/core/validators/custom_form_field_validator.dart';
import '../../../domain/services/navigation_services/navigation_service.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStateNotifier = Provider.of<AppStateNotifier>(context);

    return BlocProvider(
      create: (BuildContext context) => SignUpBloc(
        SignUpState.initial(appStateNotifier: appStateNotifier),
      ),
      child: const SignUpScreenConsumer(),
    );
  }
}

class SignUpScreenConsumer extends StatelessWidget {
  const SignUpScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
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
          context.read<SignUpBloc>().add(const SignUpEvent.callResetState());
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              AuthConstants.signUp,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w300,
                  fontSize: 16.sp),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).colorScheme.tertiary,
                size: 5.w,
              ),
            ),
          ),
          body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: state.formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 27.h,
                        width: 80.w,
                          child: SvgPicture.asset(
                        AssetConstants.register,
                        fit: BoxFit.contain,
                      )),
                      CustomTextField(
                        inputWithLabel: true,
                        labelText: AuthConstants.userName,
                        hintText: AuthConstants.hintUsernameText,
                        isLabelTextColor: true,
                              labelTextColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                              customFillColor: true,
                              fillColor: Theme.of(context).colorScheme.tertiary,
                        controller: state.usernameController,
                        errorText: state.errorUsername.isNotEmpty
                            ? state.errorUsername
                            : null,
                        validator: (val) {
                          return CustomFormFieldValidator.checkIfEmpty(val);
                        },
                        onChanged: (_) {
                          context
                              .read<SignUpBloc>()
                              .add(const SignUpEvent.onUsernameChanged());
                        },
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomTextField(
                        inputWithLabel: true,
                        hintText: AuthConstants.hintCollegeText,
                        labelText: AuthConstants.userCollege,
                        controller: state.userCollegeController,
                        isLabelTextColor: true,
                              labelTextColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                              customFillColor: true,
                              fillColor: Theme.of(context).colorScheme.tertiary,
                        errorText: state.errorUserCollege.isNotEmpty
                            ? state.errorUserCollege
                            : null,
                        validator: (val) {
                          return CustomFormFieldValidator.checkIfEmpty(val);
                        },
                        onChanged: (_) {
                          context
                              .read<SignUpBloc>()
                              .add(const SignUpEvent.onUserCollegeChanged());
                        },
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomTextField(
                        hintText: AuthConstants.hintTextEmail,
                        inputWithLabel: true,
                        isLabelTextColor: true,
                              labelTextColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                              customFillColor: true,
                              fillColor: Theme.of(context).colorScheme.tertiary,
                        labelText: AuthConstants.emailAddress,
                        controller: state.userEmailController,
                        errorText: state.errorEmail.isNotEmpty
                            ? state.errorEmail
                            : null,
                        validator: (val) {
                          return CustomFormFieldValidator.emailFieldValidator(
                              val);
                        },
                        onChanged: (_) {
                          context
                              .read<SignUpBloc>()
                              .add(const SignUpEvent.onEmailChanged());
                        },
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomTextField(
                        inputWithLabel: true,
                        hintText: AuthConstants.password,
                        labelText: AuthConstants.password,
                        obscureText: true,
                        controller: state.passwordController,
                        isLabelTextColor: true,
                              labelTextColor: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
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
                              .read<SignUpBloc>()
                              .add(const SignUpEvent.onPasswordChanged());
                        },
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      PrimaryButton(
                        text: AuthConstants.signUp,
                        textColor:
                                  Theme.of(context).colorScheme.background,
                        height: 5.5.h,
                        onPressed: () {
                          if (state.formKey.currentState!.validate()) {
                            context
                                .read<SignUpBloc>()
                                .add(const SignUpEvent.onSignUpPressed());
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
                    ],
                  ),
                ),
              )),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: Text(
              AuthConstants.termsAndConditions,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w300),
            ),
          ),
        );
      },
    );
  }
}
