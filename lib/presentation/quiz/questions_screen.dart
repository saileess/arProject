import 'package:flutter/material.dart';
import 'package:major_project/presentation/core/widgets/primary_button.dart';
import 'package:sizer/sizer.dart';

import '../../domain/constants/assets_constants.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Center(
          child: Text(
            'Question No. 03',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 16.sp,
                color: Theme.of(context).colorScheme.tertiary),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Indentify the organ given below:',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 15.sp,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                  // SizedBox(
                  //   height: 1.h,
                  // ),
                  Container(
                    height: 40.h,
                    width: 100.w,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(2.w)),
                        child: Image.asset(
                          AssetConstants.heartQuiz,
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  PrimaryButton(
                    text: '1. Liver',
                    onPressed: () {},
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    textColor: Theme.of(context).colorScheme.tertiary,
                    width: 100.w,
                    height: 6.h,
                    borderColor: Theme.of(context).colorScheme.tertiary,
                    borderRadius: 2.w,
                    fontSize: 13.sp,
                    elevation: 2,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  PrimaryButton(
                    text: '2. Rib Cage',
                    onPressed: () {},
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    textColor: Theme.of(context).colorScheme.tertiary,
                    width: 100.w,
                    height: 6.h,
                    borderColor: Theme.of(context).colorScheme.tertiary,
                    borderRadius: 2.w,
                    fontSize: 13.sp,
                    elevation: 2,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  PrimaryButton(
                    text: '3. Heart',
                    onPressed: () {},
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    textColor: Theme.of(context).colorScheme.tertiary,
                    width: 100.w,
                    height: 6.h,
                    borderColor: Theme.of(context).colorScheme.tertiary,
                    borderRadius: 2.w,
                    fontSize: 13.sp,
                    elevation: 2,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  PrimaryButton(
                    text: '4. Gall Bladder',
                    onPressed: () {},
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    textColor: Theme.of(context).colorScheme.tertiary,
                    width: 100.w,
                    height: 6.h,
                    borderColor: Theme.of(context).colorScheme.tertiary,
                    borderRadius: 2.w,
                    fontSize: 13.sp,
                    elevation: 2,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryButton(
                  text: '<',
                  onPressed: () {},
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  textColor: Theme.of(context).colorScheme.tertiary,
                  width: 10.w,
                  height: 5.h,
                  borderColor: Theme.of(context).colorScheme.onBackground,
                  borderRadius: 15.w,
                  fontSize: 16.sp,
                  elevation: 5,
                ),
                PrimaryButton(
                  text: '>',
                  onPressed: () {},
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  textColor: Theme.of(context).colorScheme.tertiary,
                  width: 10.w,
                  height: 5.h,
                  borderColor: Theme.of(context).colorScheme.onBackground,
                  borderRadius: 15.w,
                  fontSize: 16.sp,
                  elevation: 5,
                ),
                  ],
                ),
            )
          ],
        ),
        
      )),
    );
  }
}
