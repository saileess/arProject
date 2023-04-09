import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppConstants {
  static const save = 'Save';
  static const all = 'All';
  static const editName = 'Edit Name';
  static const editType = 'Edit Type';
  static const logout = 'Logout';
  static const status = 'Status';
  static const home = 'Home';
  static const rooms = 'Rooms';
  static const schedule = 'Schedule';
  static const history = 'History';
  static const reset = 'Reset';
  static const reconfig = 'Reconfig';
  static const configure = 'Configure';
  static const next = 'Next';
  static const apply = 'Apply';
  static const or = 'OR';



  static const colonText = ' : ';
}

class AuthConstants {
  static const yourProfile = 'Your Profile';
  static const userName = 'Full Name';
  static const hintUsernameText = 'Enter your Name';

  static const emailAddress = 'Email Address';
  static const userCollege = 'College Name';
  static const signIn = 'Sign In';
  static const sendEmail = 'Send Email';
  static const weWillSendLink = 'We will send you a link to reset your password on your registered email address.';
  static const hintTextEmail = 'Enter Email Address';
  static const password = 'Password';
  static const confirmPassword = 'Confirm Password';
  static const login = 'Login';
  static const signUp = 'Sign Up';
  static const forgotPasswordQ = 'Forgot Password?';
  static const dateofBirth = 'Date of Birth';
  static const min8characters = 'minimum 8 characters';
  static const dontHaveAnAcc = 'Don\’t have an account?';
  static const haveaReferralCode = 'Have a referral code?';
  static const enterReferralCode = 'Enter Referral Code';
  static const code = 'CODE';
  static const termsAndConditions = 'By signing in to your account you accept our\n Terms & Conditions | Privacy Policy';
  static const forgotPassword = 'Forgot Password';
  static const hintCollegeText = 'Enter your College';


}

class InviteFriendsConstants {
  static const inviteFriends = 'Invite Friends';
  static const referAFriend = 'Refer a Friend';
  static const inviteFriendsGetReward =
      'Invite friends and get a reward upto ₹2,500';
}



class ChangePasswordConstants{
    static const changePassword = 'Change Password';
  static const newPassword = 'New Password';
  static const confirmPassword = 'Confirm Password';
  static const updatePassword = 'Update Password';
  static const min8characters = 'minimum 8 characters';
  static const updateYourAccount = 'Update your account password';
}

class ErrorConstants {
  static String requiredField = 'Required';
  static String invalidEmail = 'Invalid Email';
  static String invalidUsername = 'Invalid FullName';
  static String invalidAge = 'Invalid Age';

  static String emailExist = 'Email already exists!';

  static String failedAppleLogin =
      'Failed to login with apple. Please try again!';
  static String failedFacebookLogin =
      'Failed to login with facebook. Please try again!';
  static String failedGoogleLogin =
      'Failed to login with google. Please try again!';

  static String genericError = 'Password cannot be empty';
  static String passwordCannotBeEmpty = 'Password cannot be empty';
  static String passwordLengthShould = 'Password length should be at least 6';
  static String emailNumberNonEmpty = 'Email cannot be empty';
  static String authFailed = 'Authentication Failed';

  static String userDisabled = 'User is disabled';
  static String userNotFound = 'User not found';
  static String logoutFailed = 'Failed to logout. Please try again!';
  static String failedPasswordReset =
      'Failed to send reset password link. Please try again!';

  static String wrongPassword =
      'Wrong password. Please try again!';

  static String wrongConfirmPassword = 'Password didn\'t match';
  static String expiredActionCode = 'Action code is expired';
  static String invalidActionCode = 'Action code is invalid';
  static String weakPassword = 'Weak password';

  static showToast(String errMsg, {Color? backgroundColor}) =>
      Fluttertoast.showToast(
        msg: errMsg,
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        webPosition: 'center',
        gravity: ToastGravity.TOP,
        backgroundColor: backgroundColor ?? Colors.red,
        textColor: Colors.white,
        fontSize: 14,
      );
}


class OnboardingConstants{
  static const skip = 'Skip';
}

class HomeConstants{
  static const science = 'Science';
  static const geography = 'Geography';
  static const relatedTopic = 'Related Topics';
  static const viewMore = 'View More';
  static const humanHeart = 'Human Heart';
  static const humanBrain = 'Human Brain';
  static const humanHeartBasics = 'Human Heart Basics';

  static const earth = 'Earth';
  static const moon = 'Moon';

  static const viewArModel = 'Open camera to view AR model';

}

class ModelConstants{
  static const local = 'Local';
  static const web = 'Web';
}

class CategoryConstants{
  static const planet = 'Planets';
  static const space = 'Space';
  static const core = 'Core';
  static const other = 'Others';

}