import 'package:flutter/material.dart';

import '../../modules/view/add_admin_account_view.dart';
import '../../modules/view/admin_account_view.dart';
import '../../modules/view/check_email_view.dart';
import '../../modules/view/confirm_phone_view.dart';
import '../../modules/view/create_device_view.dart';
import '../../modules/view/edit_admin_account_view.dart';
import '../../modules/view/error_page.dart';
import '../../modules/view/give_access_view.dart';
import '../../modules/view/grant_permissions_view.dart';
import '../../modules/view/intro_view.dart';
import '../../modules/view/show_name_view.dart';
import '../../modules/view/sign_up_view.dart';
import '../../modules/view/splash_view.dart';
import '../../modules/view/user_type_view.dart';

class RouteTo {
  static const signup = '/signup';
  static const checkEmail = '/checkEmail';
  static const createDevie = '/createDevice';
  static const giveAccess = '/giveAccess';
  static const confirmPhone = '/confirmPhone';
  static const showName = '/showName';
  static const userType = '/userType';
  static const grantPermisions = '/grantPermissions';
  static const intro = '/intro';
  static const splash = '/splash';
  static const addAdmidAccount = '/addAdmidAccount';
  static const editAdminAccount = '/editAdminAccount';
  static const adminAccount = '/adminAccount';
}

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/signup':
        return MaterialPageRoute(builder: (context) => SignUp());
      case '/splash':
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case '/checkEmail':
        return MaterialPageRoute(builder: (context) => const CheckEmail());
      case '/createDevice':
        return MaterialPageRoute(builder: (context) => CreateDevice());
      case '/giveAccess':
        return MaterialPageRoute(builder: (context) => const GiveAccess());
      case '/confirmPhone':
        return MaterialPageRoute(builder: (context) => ConfirmPhone());
      case '/showName':
        return MaterialPageRoute(builder: (context) => const ShowName());
      case '/userType':
        return MaterialPageRoute(builder: (context) => const UserType());
      case '/grantPermissions':
        return MaterialPageRoute(builder: (context) => GrantPermissions());
      case "/intro":
        return MaterialPageRoute(builder: (context) => Intro());
      case "/addAdmidAccount":
        return MaterialPageRoute(builder: (context) => AddAdmidAccount());
      case "/editAdminAccount":
        return MaterialPageRoute(builder: (context) => EditAdminAccount());
      case "/adminAccount":
        return MaterialPageRoute(builder: (context) => const AdminAccount());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }
}
