import 'package:flutter/foundation.dart';

class User {
  int id;
  String firstName;
  String lastName;
  String userName;
  String dateOfBirth;
  String email;
  String mobileNumber;

  User(
      {@required this.firstName,
      @required this.lastName,
      @required this.userName,
      @required this.dateOfBirth,
      @required this.email,
      @required this.mobileNumber});
}
