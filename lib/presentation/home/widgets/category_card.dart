import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomCaterogyCard extends StatelessWidget {
  final String cornerImage;
  final String categoryText;
  final Color cardColor;
  final Function() onCardTapped;

  const CustomCaterogyCard(
      {Key? key,
      required this.cornerImage,
      required this.categoryText,
      required this.cardColor,
      required this.onCardTapped,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardTapped,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3.5.w),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 10.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3.w),
                        topRight: Radius.circular(3.w),
                      ),
                      color: cardColor,
                      ),
                ),
                Positioned(
                    top: 4.h,
                    bottom: 0.5.h,
                    left: 0.5.h,
                    child: SizedBox(
                      height: 4.h,
                      width: 4.h,
                      child: RotatedBox(
                        quarterTurns: 1,
                          child: Image(
                        image: AssetImage(cornerImage),
                        fit: BoxFit.contain,
                      )
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 2.w),
                Text(
                  categoryText,
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.background),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
          ],
        ),
      ),
    );
  }
}