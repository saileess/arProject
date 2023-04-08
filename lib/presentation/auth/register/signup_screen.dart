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
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp),
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
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                  child: Column(
                    children: [
                      CustomTextField(
                        inputWithLabel: true,
                        labelText: AuthConstants.userName,
                        hintText: AuthConstants.hintUsernameText,
                        customFillColor: true,
                        fillColor: Theme.of(context).colorScheme.primary,
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
                        customFillColor: true,
                        fillColor: Theme.of(context).colorScheme.primary,
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
                        customFillColor: true,
                        fillColor: Theme.of(context).colorScheme.primary,
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
                        controller: state.passwordController,
                        customFillColor: true,
                        fillColor: Theme.of(context).colorScheme.primary,
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
                        suffixIcon: InkWell(
                          onTap: () {
                            BlocProvider.of<SignUpBloc>(context)
                                .add(SignUpEvent.emitFromAnywhere(
                              state: state.copyWith(
                                  obscurePassword: !state.obscurePassword),
                            ));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              width: 10.w,
                              child: Center(
                                  child: SvgPicture.asset(
                                state.obscurePassword
                                    ? AssetConstants.showPasswordSvg
                                    : AssetConstants.hidePasswordSvg,
                                fit: BoxFit.cover,
                                alignment: Alignment.centerRight,
                              )),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      PrimaryButton(
                        text: AuthConstants.signUp,
                        height: 6.h,
                        onPressed: () {
                          if (state.formKey.currentState!.validate()) {
                            context
                                .read<SignUpBloc>()
                                .add(const SignUpEvent.onSignUpPressed());
                          }
                        },
                        backgroundColor: Theme.of(context).primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        elevation: 0,
                        borderRadius: 8.w,
                      ),
                    ],
                  ),
                ),
              )),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Text(
              AuthConstants.termsAndConditions,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w300),
            ),
          ),
        );
      },
    );
  }
}
