import 'package:flutter/material.dart';
import '../../pages/pages.dart';

import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutesName.splashPage:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case RoutesName.authOptionPage:
        return MaterialPageRoute(builder: (_) => const AuthOptionPage());
      case RoutesName.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case RoutesName.dashboardPage:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      case RoutesName.settingPage:
        return MaterialPageRoute(builder: (_) => const SettingPage());
      case RoutesName.cardPage:
        return MaterialPageRoute(builder: (_) => const CardPage());
      case RoutesName.transferPage:
        return MaterialPageRoute(builder: (_) => const TransferPage());
      case RoutesName.walletPage:
        return MaterialPageRoute(builder: (_) => const WalletPage());
      case RoutesName.registerPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case RoutesName.verificationPage:
        return MaterialPageRoute(builder: (_) => const VerificationPage());
      case RoutesName.biometricLogin:
        return MaterialPageRoute(builder: (_) => const BiometricLogin());
      case RoutesName.notificationPage:
        return MaterialPageRoute(builder: (_) => const NotificationPage());
      case RoutesName.supportPage:
        return MaterialPageRoute(builder: (_) => const SupportPage());
      case RoutesName.forgetPage:
        return MaterialPageRoute(builder: (_) => const ForgetPage());
      case RoutesName.compaignPage:
        return MaterialPageRoute(builder: (_) => const CompaignPage());
      case RoutesName.accountCreatedPage:
        return MaterialPageRoute(builder: (_) => const AccountCreatedPage());
      case RoutesName.transactionPage:
        return MaterialPageRoute(builder: (_) => const TransactionPage());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
