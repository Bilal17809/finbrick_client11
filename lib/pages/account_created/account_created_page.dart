import 'package:finbricks_abr_client/extension/extension.dart';
import 'package:flutter/material.dart';
import '../../common_widgets/logo_widget.dart';
import '../../core/constant/constant.dart';
import '../../core/routes/routes_name.dart';
import '../../core/theme/app_colors.dart';

class AccountCreatedPage extends StatelessWidget {
  const AccountCreatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 20,
          child: LogoWidget(),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Column(
            children: [
         Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lets Start!',
                    style: context.textTheme.headlineSmall,
                  ),
                ],
              ),
              SizedBox(height: 12),
              Center(
                child: Text(
                  'Your fincrib Account was created successfully.\n'
                  'Now you can Login into you Account',
                  style: context.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginPage,(route)=>false
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: skyTextColor,
                ),
                child: Text('Login'),
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
