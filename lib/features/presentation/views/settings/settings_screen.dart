import 'package:free_palestine/core/di/service_locator.dart';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/shared_preferences/app_prefs.dart';
import 'package:free_palestine/features/business_logic/theme/theme_cubit.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTheme();
  }

  Future<void> getTheme() async {
    AppPreferences appPreferences = getIt.get<AppPreferences>();
    bool isDark = await appPreferences.isDarkMode();
    setState(() {
      darkMode = isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    return GradientBackground(
      title: 'الإعدادات',
      child: ListView(
        children: [
          30.heightSizedBox,
          ListTile(
            title: Text(
              AppStrings.darkMode,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: FontSize.s27,
                  ),
            ),
            trailing: CupertinoSwitch(
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                  themeCubit.setDarkMode(value);
                });
              },
              value: darkMode,
              activeColor: LightAppColors.btnBack2,
              trackColor: Theme.of(context).primaryColorDark.withOpacity(0.3),
            ),
          ),
          10.heightSizedBox,
          ListTile(
            title: Text(
              'الصوت',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: FontSize.s27,
                  ),
            ),
            trailing: CupertinoSwitch(
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                  themeCubit.setDarkMode(value);
                });
              },
              value: darkMode,
              activeColor: LightAppColors.btnBack2,
              trackColor: Theme.of(context).primaryColorDark.withOpacity(0.3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                pushRoute(context, Routes.profile);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الملف الشخصي',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: FontSize.s27,
                        ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                pushRoute(context, Routes.contactUs);
              },
              child: Text(
                'اتصل بنا',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: FontSize.s27,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
