import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.text,
      // required this.function,
      required this.onPressed,

      this.width,
      this.height,
      this.borderRadius,
      this.elevation,
      this.borderColor,
      this.useAsSuffix = false,
      this.backgroundColor,
      this.textColor,
      this.isDisabled = false,
      this.isPrefixIcon = false,
      this.isSuffixIcon = true,
      this.icon,
      this.fontWeight,
      this.fontSize,
      this.iconImage,
      this.isIconImage = false,
      this.isOnlyIcon = false})
      : super(key: key);
  final double? width, height, borderRadius, elevation;
  final Color? borderColor, backgroundColor, textColor;
  final String text;
  final bool useAsSuffix;
  // final Function()? function;
  final Function onPressed;
  final bool isDisabled;
  final bool isPrefixIcon;
  final bool isSuffixIcon;
  final Widget? icon;
  final bool isOnlyIcon;
  final bool isIconImage;
  final FontWeight? fontWeight;
  final String? iconImage;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return
    isOnlyIcon 
    ? Padding(
        padding: useAsSuffix
          ? EdgeInsets.symmetric(horizontal: 5.sp, vertical: 3.sp)
          : EdgeInsets.zero,
        child: ElevatedButton(
              onPressed: isDisabled ? null :() => onPressed(),
              style: buttonStyle(context),
              child: icon,
            )
      )
    :Padding(
      padding: useAsSuffix
          ? EdgeInsets.symmetric(horizontal: 5.sp, vertical: 3.sp)
          : EdgeInsets.zero,
      child:isPrefixIcon || isIconImage ?  
      ElevatedButton.icon(
              onPressed: () => onPressed(), 
              icon: SvgPicture.asset('$iconImage'), 
              label: buttonLabel(context, text),
              style: buttonStyle(context),
              )  
      
            : ElevatedButton(
              onPressed: isDisabled ? null :() => onPressed(),
              style: buttonStyle(context),
              child: buttonLabel(context, text),
            ),
    );
  }

  Text buttonLabel(BuildContext context, String text) {
    return Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor ?? Theme.of(context).colorScheme.primary,
                fontWeight: fontWeight, fontSize: fontSize 
              ),
              // style: TextStyle(
              //   color: textColor ?? Theme.of(context).primaryColor,
              //   fontSize: 12.sp,
              //   fontWeight: FontWeight.w500,
              // ),
            );
  }

  ButtonStyle buttonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
              minimumSize: Size(width ?? 100.w, height ?? 14.w),
              primary: backgroundColor ?? Colors.white,
              side: BorderSide(
                color: borderColor ?? Theme.of(context).primaryColor,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
              ),
              elevation: elevation,
            );
  }
}
