import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BookmarkScreenConsumer();
  }
}

class BookmarkScreenConsumer extends StatelessWidget {
  const BookmarkScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Text(
                'Bookmarks',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.w200,
                    fontSize: 16.sp),
              ),
            ),
            Divider(
              thickness: 0.3,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 15.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2.w)),
                color: Theme.of(context).colorScheme.tertiary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                    height: 5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2.w),
                        topRight: Radius.circular(2.w),
                      ),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    
                  ),
                  Positioned(
                    top: 1.h,
                    bottom: 0.5.h,
                    left: 4.w,
                    child: SizedBox(
                      // height: 4.h,
                      // width: 4.h,
                      child: Text(
                          'Earth',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp),
                        ),
                    ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h,),

                        Text(
                          'Chapter: Earth',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp),
                        ),
                        SizedBox(height: 1.h,),
                        Text(
                          'Module: Geography',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
