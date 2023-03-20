

import 'package:email_validator/email_validator.dart';

import '../../constants/string_constants.dart';


class CustomFormFieldValidator {
  // empty field
  static checkIfEmpty(val) {
    if (val == null || val.isEmpty) {
      return ErrorConstants.requiredField;
    }
    return null;
  }

  // email field
  static emailFieldValidator(val) {
    if (val == null || val.isEmpty) {
      return ErrorConstants.requiredField;
    } else if (!EmailValidator.validate(val)) {
      return ErrorConstants.invalidEmail;
    }
    return null;
  }

// username field
  static userNameFieldValidator(val) {
    final isValidUsername =
        RegExp(r'^(?=[a-zA-Z0-9._]{6,20}$)(?!.*[_.]{2})[^_.].*[^_.]$');

    if (val == null || val.isEmpty) {
      return ErrorConstants.requiredField;
    } else if (!isValidUsername.hasMatch(val)) {
      return ErrorConstants.invalidUsername;
    }
    return null;
  }

  static passwordFieldValidator(val) {
    if (val == null || val.isEmpty) {
      return ErrorConstants.requiredField;
    } else if (val.length < 6) {
      return ErrorConstants.passwordLengthShould;
    }
    return null;
  }
}
